FROM python:3.6

WORKDIR /app
ADD ./app /app

RUN pip install --upgrade pip
# install requirements
RUN pip3 install -r requirements.txt
CMD ["python","app.py"]
