FROM python:3.6
COPY ./setup.py /var/parl-ai/setup.py
COPY ./requirements.txt /var/parl-ai/requirements.txt
COPY ./README.md /var/parl-ai/README.md
WORKDIR /var/parl-ai
RUN python setup.py develop && pip install torch
RUN pip install tornado && pip install 'git+https://github.com/rsennrich/subword-nmt.git#egg=subword-nmt'
