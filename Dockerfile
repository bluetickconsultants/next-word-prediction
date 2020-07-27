FROM ubuntu:16.04

# MAINTANER thirupathi-chintu <thirupathiperaboina@gmail.com>

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev python

RUN pip install --upgrade pip
# We copy just the requirements.txt first to leverage Docker cache
COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./app /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
