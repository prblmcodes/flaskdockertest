FROM python:3.10-alpine

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


COPY /requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY /app.py /app.py

CMD ["gunicorn"  , "--bind", "0.0.0.0:8000", "app:app"]