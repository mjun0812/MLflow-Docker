# MLflow-Docker

MLflow Tracking Server on Docker.

## Require

- Docker
- Docker Compose

## Install

Set hostname at mlflow server.

```bash
cp env.template .env
vim .env
```

```
VIRTUAL_HOST="example.com,localhost"
```

## Run

```bash
docker-compose up -d
```

```python
import mlflow
import os

MLFLOW_TRACKING_URI="http://example.com:5000"
MLFLOW_TRACKING_USERNAME="mlflow"
MLFLOW_TRACKING_PASSWORD="mlflow"

os.environ("MLFLOW_TRACKING_USERNAME") = MLFLOW_TRACKING_USERNAME
os.environ("MLFLOW_TRACKING_PASSWORD") = MLFLOW_TRACKING_PASSWORD

mlflow.set_tracking_uri(MLFLOW_TRACKING_URI)
```
