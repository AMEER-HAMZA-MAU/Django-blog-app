FROM python:3.7
RUN mkdir /home/blog
WORKDIR /home/blog
COPY ./ /home/blog/
COPY posts.json /home/blog
EXPOSE 8000
ENTRYPOINT  ["python3","manage.py","runserver","0.0.0.0:8000"]
