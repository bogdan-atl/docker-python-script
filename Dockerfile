#Deriving the latest base image
FROM python:3-alpine3.15


#Labels as key value pair
LABEL Maintainer="bogdan"


# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /app
COPY main.py  /app
COPY requirements.txt /app

RUN pip install -r requirements.txt 
#to COPY the remote file at working directory in container

# Now the structure looks like this '/usr/app/src/favicon.py'


#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD python ./main.py
