FROM python:latest

WORKDIR /code

COPY . .

CMD ["python", "main.py"]