FROM python:3.8.10-slim

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1

ADD ./app /app

WORKDIR /app

RUN python -m pip install --no-cache-dir --upgrade -r requirements.txt

CMD ["python", "/app/main.py"]