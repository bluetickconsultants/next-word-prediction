FROM pytorch/pytorch:latest

RUN apt-get update \
     && apt-get install -y \
        libgl1-mesa-glx \
        libx11-xcb1 \
     && apt-get clean all \
     && rm -r /var/lib/apt/lists/*

RUN /opt/conda/bin/conda install --yes \
    astropy \
    matplotlib \
    pandas \
    scikit-learn \
    scikit-image 
WORKDIR /app

ADD ./app /app
RUN apt-get update
RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt

CMD ["python","app.py"]
