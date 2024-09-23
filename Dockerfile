FROM php:8.3.11-apache-bookworm

# copy own msmtp sender
COPY ./msmtpsend.sh ./msmtpsendpw.sh /bin/

# install msmtp, and set helber script as mailer
RUN apk add --update --no-cache msmtp \
	&& chmod +x /bin/msmtpsend.sh \
	&& chmod +x /bin/msmtpsendpw.sh

ENV TLS_ONOFF=on \
	STARTTLS_ONOFF=on 
