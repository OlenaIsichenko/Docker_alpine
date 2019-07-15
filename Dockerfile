FROM alpine:latest
RUN apk update && apk add nano php7 apache2 php7-apache2

ADD /docker/httpd.conf /etc/apache2/httpd.conf

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
