FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["gunicorn", "-w", "4", "api:app", "--bind", "0.0.0.0:5000"]
