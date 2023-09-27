FROM python:3.7
RUN mkdir /home/blog
RUN pip3 install asgiref==3.5.2
RUN pip3 install backports.zoneinfo==0.2.1
RUN pip3 install Django==4.1.1
RUN pip3 install sqlparse==0.4.2
WORKDIR /home/blog
COPY ./ /home/blog/
EXPOSE 8000
ENTRYPOINT  ["python","manage.py","runserver","0.0.0.0:8000"]
