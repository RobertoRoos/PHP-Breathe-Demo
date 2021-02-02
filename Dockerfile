FROM python:3.8

COPY . /repo

WORKDIR /repo/docs/

RUN pip install -r requirements.txt

RUN apt update -qq && apt install -y doxygen

RUN make html
