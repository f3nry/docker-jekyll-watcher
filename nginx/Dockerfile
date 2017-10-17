FROM nginx

RUN apt-get update 
RUN apt-get install -y curl gnupg gnupg2 gnupg1

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN nodejs -v
RUN npm -v

RUN npm install -g mustache

RUN mustache -v

COPY config.json /etc/nginx/config.json
COPY nginx.conf.mustache /etc/nginx/nginx.conf.mustache

RUN mustache /etc/nginx/config.json /etc/nginx/nginx.conf.mustache > /etc/nginx/nginx.conf  
