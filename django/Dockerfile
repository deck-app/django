FROM python:3
LABEL MAINTAINER Naba Das <hello@get-deck.com>
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN mkdir -p /code
## Linux permission issue
ARG USER_ID
ARG GROUP_ID
COPY docker-entrypoint.sh /usr/local/bin/
RUN usermod -u ${USER_ID} www-data && groupmod -g ${GROUP_ID} www-data
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "docker-entrypoint.sh" ]
