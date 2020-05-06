FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["gunicorn", "--bind", ":8080", "main:APP"]
