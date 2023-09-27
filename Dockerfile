FROM python:3.7-buster
RUN mkdir /home/myblog
WORKDIR /home/myblog 
COPY /posts.json ./
COPY ./ /home/myblog/

EXPOSE 8000
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]
