FROM python:3.8.5
LABEL author='AndreyI' version=1 broken_keyboards=100500
RUN mkdir /code
RUN pip3 install -r /code/requirements.txt
COPY requirements.txt /code
COPY . /code
WORKDIR /code
#CMD python /code/manage.py runserver 0:8000
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000 
