FROM ubuntu:16.04

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev build-essential && \
    apt-get install -y wget unzip curl

# We copy the requirements.txt to Docker
COPY requirements.txt /app/requirements.txt
COPY flaskr /app/flaskr.botify.com

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "flaskr.botify.com/flaskr.py" ]
