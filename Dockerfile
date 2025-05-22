FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y apache2
RUN date > /var/www/html/buildtime.txt
COPY html/ /var/www/html/
EXPOSE 80
CMD service apache2 start && bash
