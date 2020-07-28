FROM python:3.6

WORKDIR /app
ADD ./app /app
RUN apt-get update \
 && apt-get install -y \
    build-essential git gfortran \
    python3 python3-setuptools python3-dev \
    cmake curl wget unzip libreadline-dev libjpeg-dev libpng-dev ncurses-dev \
    imagemagick gnuplot gnuplot-x11 libssl-dev libzmq3-dev graphviz

ARG TORCH_DISTRO_COMMIT=$DEFAULT_TORCH_DISTRO_COMMIT
RUN git clone https://github.com/torch/distro.git ~/torch --recursive \
 && cd ~/torch \
 && git checkout "$TORCH_DISTRO_COMMIT" \
 && ./install.sh

RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt
CMD ["python","app.py"]
