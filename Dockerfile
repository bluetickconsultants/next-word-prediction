FROM python:3.6

WORKDIR /app
ADD ./app /app
RUN apt-get update
RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt
CMD ["python","app.py"]
