FROM python:3.6.1-alpine

WORKDIR /app
ADD ./app /app
RUN pip install --upgrade pip
# install requirements
RUN pip install -r requirements.txt
CMD ["python","app.py"]
