FROM python:3.7-buster
RUN mkdir /home/myapp
WORKDIR /home/myapp
COPY /posts.json /home/myapp
COPY ./ /home/myapp

EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
