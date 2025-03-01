FROM python:3.9.7-slim-buster

RUN apt-get update 

RUN apt-get install -y git

RUN pip install goblet-gcp

COPY entrypoint.py /entrypoint.py

ENTRYPOINT ["python3", "/entrypoint.py"]
