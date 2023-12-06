# This Dockerfile is licensed under the CC0 1.0 Deed
# https://creativecommons.org/publicdomain/zero/1.0/

FROM nginx:alpine-slim

COPY --chown=nginx \
     ./nginx.conf /etc/nginx/conf.d/default.conf

## This section isn't needed, but I liked the cute Ghost 404 page 
## from https://github.com/tarampampam/error-pages
COPY --chown=nginx \
    --from=tarampampam/error-pages \
   /opt/html/ghost /usr/share/nginx/errorpages/_error-pages

RUN rm -rf /usr/share/nginx/html/ && mkdir /usr/share/nginx/html/

COPY public/ /usr/share/nginx/html/
