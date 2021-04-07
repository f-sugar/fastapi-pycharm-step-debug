FROM python:3.8.2-buster

WORKDIR /app
COPY . /app

ENV PYTHONPATH "${PYTHONPATH}:/app"
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
    vim  
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && \
    pip install poetry==1.1.5

RUN poetry config virtualenvs.create false
RUN poetry install --no-root
