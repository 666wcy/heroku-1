#!/bin/bash

cd /usr/src/app



#curl -L -s $(curl -s "https://api.github.com/repos/${REPO}/releases/${VER}" | grep -Po '"browser_download_url": "\K.*?(?=")') | tar xf - -C .

git clone https://github.com/666wcy/heroku-1
chmod 0777 /usr/src/app/heroku-1/web/ -R
mv /usr/src/app/heroku-1/web/* /usr/src/app

rm -rf /usr/src/app/heroku-1


pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
