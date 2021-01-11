FROM python:3
LEVEL Naba Das <nabad600@gmail.com>
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
COPY docker-entrypoint.sh /usr/local/bin
COPY app/* /code/
ENTRYPOINT [ "docker-entrypoint.sh" ]
#CMD [ "sh", "/usr/local/bin/docker-entrypoint.sh" ]
