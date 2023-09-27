FROM python:3.7
RUN pip install django==3.2
RUN mkdir /home/blog
WORKDIR /home/blog
COPY ./ /home/blog/
COPY posts.json /home/blog/
EXPOSE 8000
ENTRYPOINT  ["python","manage.py","runserver","0.0.0.0:8000"]
