#!/bin/sh
# This script is licensed under the CC0 1.0 Deed
# https://creativecommons.org/publicdomain/zero/1.0/
rm -rf /home/user/hugo/public && docker container stop hugo

hugo && docker build -t webserver . && docker run -it --restart=always -d -p 80:80 --name hugo2 cfultz/hugo-nginx:latest

exit 0
