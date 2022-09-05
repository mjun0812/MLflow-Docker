FROM python:3.10

RUN pip install -U pip && \
    pip install --no-cache-dir mlflow mysqlclient boto3

