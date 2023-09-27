FROM python:3.7-buster
WORKDIR /app
COPY . /app
EXPOSE 8000
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]
