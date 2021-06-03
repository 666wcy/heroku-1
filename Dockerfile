FROM ubuntu:20.04
ENV TZ UTC
RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get update

RUN apt-get install wget -y
RUN apt-get install git -y

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends python3.9 && \
    apt-get install -y --no-install-recommends python3.9-dev && \
    apt-get install -y --no-install-recommends python3-pip && \
    apt-get install -y curl





RUN curl -O https://raw.githubusercontent.com/666wcy/heroku-1/main/web/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir




RUN wget https://raw.githubusercontent.com/666wcy/heroku-1/main/start.sh && chmod +x start.sh && ./start.sh
