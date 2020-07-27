FROM ubuntu:16.04

# MAINTANER thirupathi-chintu <thirupathiperaboina@gmail.com>

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev python python3

RUN pip3 install --upgrade pip3
# We copy just the requirements.txt first to leverage Docker cache
COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY ./app /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
