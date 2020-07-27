FROM python:3.6

WORKDIR /app
ADD ./app /app
RUN apt-get update
RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN DEBIAN_FRONTEND=noninteractive sh Miniconda3-latest-Linux-x86_64.sh --yes
RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt
CMD ["python","app.py"]
