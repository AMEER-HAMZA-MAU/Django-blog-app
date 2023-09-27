FROM python:3.7-buster
RUN mkdir /home/myblog/
WORKDIR /home/myblog/
COPY ./ /home/myblog/
COPY posts.json /home/myblog/
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
