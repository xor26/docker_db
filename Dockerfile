FROM python:3.7.2-alpine3.8

COPY . /app
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev
RUN pip3 install -r /app/requirements.txt
CMD python3 /app/polly.py
