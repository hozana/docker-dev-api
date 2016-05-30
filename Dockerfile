FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --force-yes git python-pip graphviz && \
    pip install sphinx sphinx_rtd_theme

RUN apt-get update && export DEBIAN_FRONTEND="noninteractive" && apt-get install -y --force-yes \
    curl \
    mysql-server \
    php7.0 \
    php7.0-curl \
    php7.0-dom \
    php7.0-mysql \
    php7.0-zip

RUN curl https://getcomposer.org/download/1.1.1/composer.phar -o /usr/local/bin/composer && \
    chmod +x /usr/local/bin/composer

RUN curl https://phar.phpunit.de/phpunit-5.3.4.phar -o /usr/local/bin/phpunit && \
    chmod +x /usr/local/bin/phpunit

RUN curl http://get.sensiolabs.org/sami.phar -o /usr/local/bin/sami && \
    chmod +x /usr/local/bin/sami

RUN curl http://get.sensiolabs.org/php-cs-fixer.phar -o /usr/local/bin/php-cs-fixer && \
    chmod +x /usr/local/bin/php-cs-fixer

RUN mkdir -p /root/api/

WORKDIR /root/api/
