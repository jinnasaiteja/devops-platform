from fastapi import FastAPI
from prometheus_client import Counter, generate_latest, CONTENT_TYPE_LATEST
from starlette.responses import Response

app = FastAPI()

REQUEST_COUNT = Counter("app_requests_total", "Total number of requests")

@app.get("/")
def home():
    REQUEST_COUNT.inc()
    return {"message": "DevOps platform app is running"}

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/metrics")
def metrics():
    return Response(generate_latest(), media_type=CONTENT_TYPE_LATEST)
