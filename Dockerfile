FROM python:3.7-buster as django-app
RUN pip install --upgrade pip
COPY requirements.txt ./
RUN apt-get update && apt-get install -y gcc musl-dev g++ libffi-dev \
  && apt-get install -y docker \
  && pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /django/user-data-app
COPY cool_counters start-app.sh /django/user-data-app/
EXPOSE 8000
WORKDIR /django/user-data-app
RUN chmod +x /django/user-data-app/start-app.sh
CMD [ "/django/user-data-app/start-app.sh" ]
