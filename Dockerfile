FROM php:8.3.11-apache-bookworm

# copy own msmtp sender
COPY ./msmtpsend.sh ./msmtpsendpw.sh /bin/

# install msmtp, and set helber script as mailer
RUN chmod +x /bin/msmtpsend.sh \
	&& chmod +x /bin/msmtpsendpw.sh

RUN apt-get update \
    && apt-get install -y msmtp \
    && rm -rf /var/lib/apt/lists/*

ENV TLS_ONOFF=on
ENV STARTTLS_ONOFF=on
