FROM ubuntu:20.04




RUN apt-get install wget -y
RUN apt-get install git -y

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends python3.9 && \
    apt-get install -y --no-install-recommends python3.9-dev && \
    apt-get install -y --no-install-recommends python3-pip && \
    apt-get install -y curl


RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' >/etc/timezone



RUN apt install tzdata -y


RUN curl -O https://raw.githubusercontent.com/666wcy/heroku-1/main/web/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir




RUN wget https://raw.githubusercontent.com/666wcy/heroku-1/main/start.sh && chmod +x start.sh && ./start.sh
