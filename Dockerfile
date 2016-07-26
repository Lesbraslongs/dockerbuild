FROM ubuntu:latest 
RUN apt-get update && apt-get install -y php7.0-cli &&  mkdir /web && rm -f /var/lib/apt/lists/*
ADD index.php /web/index.php
EXPOSE 8080
CMD cd /web && php -S 0.0.0.0:8080
