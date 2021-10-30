FROM python:3.8.5
LABEL author='AndreyI' version=1 broken_keyboards=100500
WORKDIR /code
RUN pip3 install -r /code/requirements.txt
COPY requirements.txt /code
COPY . /code

