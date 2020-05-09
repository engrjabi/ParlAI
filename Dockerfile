FROM python:3.6
COPY . /var/parl-ai
WORKDIR /var/parl-ai
RUN python setup.py develop && pip install torch
