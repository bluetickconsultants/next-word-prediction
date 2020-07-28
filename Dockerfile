FROM continuumio/miniconda

RUN apt-get update \
 && apt-get install -y \
    build-essential python3 python3-setuptools python3-dev 
RUN apt-get update \
 && apt-get install -y \
    build-essential git gfortran \
    python3 python3-setuptools python3-dev \
    cmake curl wget unzip libreadline-dev libjpeg-dev libpng-dev ncurses-dev \
    imagemagick gnuplot gnuplot-x11 libssl-dev libzmq3-dev graphviz

WORKDIR /app
ADD ./app /app
RUN pip install --upgrade pip
# install requirements
RUN pip3 install -r requirements.txt
CMD ["python","app.py"]
