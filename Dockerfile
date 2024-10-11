FROM python:3.8.5-alpine

# Django Dockerfile

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./django_project /app

WORKDIR /app

COPY ./entrypoint.sh 

# Last Command to be executed
# Gunicorn Configuration avaliable in entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]


