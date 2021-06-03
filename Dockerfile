FROM ubuntu:20.04

WORKDIR /usr/src/app

ENV TZ UTC

RUN chmod 777 /usr/src/app

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends python3.9 && \
    apt-get install -y --no-install-recommends python3.9-dev && \
    apt-get install -y --no-install-recommends python3-pip && \
    apt-get install -y curl

RUN apt-get install git

RUN curl -O https://raw.githubusercontent.com/libDrive/server/main/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir

ENV PATH="/usr/src/app/.local/bin:${PATH}"



RUN wget https://raw.githubusercontent.com/666wcy/heroku-1/main/start.sh && chmod +x start.sh && ./start.sh
