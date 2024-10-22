# msmpt+php

forked from https://github.com/KIMB-technologies/PHP-SMTP-NGINX-Docker

An easy to use php and nginx image for docker enabling the php `mail()` function.

The image internally uses `msmtp` to forward all mails over an smtp server.
`msmtp` replaces `sendmail` in php configuration.
see https://github.com/AndreasChristianson/web-dev-site/blob/aeb1f0d20e4e8ef61e8b1945f5caec7d4b3adf7e/k8s/php-config.yaml#L1113
for an example of replacing the sendmail with this script.

