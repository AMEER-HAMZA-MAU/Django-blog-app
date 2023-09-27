FROM python:3.7-buster
RUN mkdir /home/sam
WORKDIR /home/sam
COPY /posts.json /home/sam
COPY ./ /home/sam

EXPOSE 8000
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]
