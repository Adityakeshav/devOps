FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY cert.pem .
COPY key.pem .


COPY . .

EXPOSE 5000

CMD ["python", "app.py"]