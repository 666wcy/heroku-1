FROM ubuntu

RUN apt-get update
RUN apt-get install sudo
RUN sudo apt-get update

RUN apt-get install wget -y
RUN apt-get install git -y
RUN apt-get install curl -y

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN sudo apt-get install python3-distutils -y
RUN python3 get-pip.py

RUN apt-get install git -y

RUN curl -O https://raw.githubusercontent.com/666wcy/heroku-1/main/web/requirements.txt && \
    pip3 install -r requirements.txt --no-cache-dir




RUN wget https://raw.githubusercontent.com/666wcy/heroku-1/main/start.sh && chmod +x start.sh && ./start.sh
