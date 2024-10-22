FROM php:8.3.11-apache-bookworm

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli

RUN apt-get update --fix-missing \
    && apt-get install -y msmtp \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean

COPY ./msmtpsend.sh ./msmtpsendpw.sh /bin/

RUN chmod +x /bin/msmtpsend.sh \
	&& chmod +x /bin/msmtpsendpw.sh

ENV TLS_ONOFF=on
ENV STARTTLS_ONOFF=on
