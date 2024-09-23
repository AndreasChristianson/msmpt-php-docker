# msmpt+php

forked from https://github.com/KIMB-technologies/PHP-SMTP-NGINX-Docker

An easy to use php and nginx image for docker enabling the php `mail()` function.


The image internally uses `msmtp` to forward all mails over an smtp server.
`msmtp` replaces `sendmail` in php configuration.

