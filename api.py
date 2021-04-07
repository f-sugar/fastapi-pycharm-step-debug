import uvicorn
from fastapi import FastAPI


app = FastAPI(
    title='api',
    description='fastapi simple api',
    version='1.0.0'
)


@app.get('/')
async def index():
    return {"status": "ok"}


if __name__ == "__main__":
    uvicorn.run("api:app", host="0.0.0.0", port=8000, reload=True, workers=1)
