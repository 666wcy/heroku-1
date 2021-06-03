#!/bin/bash





#curl -L -s $(curl -s "https://api.github.com/repos/${REPO}/releases/${VER}" | grep -Po '"browser_download_url": "\K.*?(?=")') | tar xf - -C .

git clone https://github.com/666wcy/heroku-1
chmod 0777 /usr/src/app/heroku-1/web/ -R
mv /heroku-1/web/* /

rm -rf /heroku-1


gunicorn main:app
