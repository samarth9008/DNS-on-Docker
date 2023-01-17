FROM ubuntu:latest

RUN apt-get update \
  && apt-get install -y \
  apt-utils \
  bind9 \
  bind9utils \
  bind9-doc 
 
#Enable IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-u bind -4"/' /etc/default/named

# Copy configuration files
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/
COPY db.example.com /etc/bind/zones/

#Start the service
CMD service named start && while :; do sleep 10; done
