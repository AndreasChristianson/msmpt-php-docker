FROM php:8.3.11-apache-bookworm

RUN apt-get update \
    && apt-get install -y msmtp \
    && rm -rf /var/lib/apt/lists/*

COPY ./msmtpsend.sh ./msmtpsendpw.sh /bin/

RUN chmod +x /bin/msmtpsend.sh \
	&& chmod +x /bin/msmtpsendpw.sh

ENV TLS_ONOFF=on
ENV STARTTLS_ONOFF=on
