# Describes what should happen in the envirmonment
# Makes a python 3 environment and new directory called code
# Also installs dependencies defined in requirements.txt

FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/