FROM python:3.6

WORKDIR /app
ADD ./app /app
RUN apt-get update -y

RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN apt-get install -y python3-venv

RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt
CMD ["python","app.py"]
