#!/bin/bash

cd /usr/src/app



#curl -L -s $(curl -s "https://api.github.com/repos/${REPO}/releases/${VER}" | grep -Po '"browser_download_url": "\K.*?(?=")') | tar xf - -C .



pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
