FROM python:3.6

WORKDIR /app
ADD ./app /app
RUN apt-get update \
 && apt-get install -y \
    build-essential git gfortran \
    python3 python3-setuptools python3-dev \
    cmake curl wget unzip libreadline-dev libjpeg-dev libpng-dev ncurses-dev \
    imagemagick gnuplot gnuplot-x11 libssl-dev libzmq3-dev graphviz

RUN curl -o https://repo.continuum.io/miniconda/Miniconda3-4.2.12-Linux-x86_64.sh  && \
     chmod +x ~/Miniconda3-4.2.12-Linux-x86_64.sh && \
     ~/Miniconda3-4.2.12-Linux-x86_64.sh -b -p /opt/conda && \     
     rm ~/Miniconda3-4.2.12-Linux-x86_64.sh && \
     /opt/conda/bin/conda install conda-build && \
     /opt/conda/bin/conda create -y --name pytorch-py35 python=3.5.2 numpy scipy ipython mkl&& \
     /opt/conda/bin/conda clean -ya
     
ENV PATH /opt/conda/envs/pytorch-py35/bin:$PATH

RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt
CMD ["python","app.py"]
