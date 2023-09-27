FROM python:3.7-buster
RUN mkdir /home/ubuntu/myblog
WORKDIR /home/ubuntu/myblog
COPY ./ /home/ubuntu/myblog
EXPOSE 8000
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]
