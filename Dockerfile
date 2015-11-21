# RazorDock for RazorCMS
#
# VERSION   0.1

# use debian jessie - just because
FROM debian:jessie

MAINTAINER Charles Corbett <nafredy@gmail.com> version: 0.1

# Update
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install unzip -y

# Build LAP stack
RUN apt-get install apache2 -y
# php5-common libapache2-mod-php5 php5-cli 

# Copy RazorCMS into the container
ADD files/razorCMS-3.4.6 /razorCMS



# run as the apache user
USER apache

# expose 80
EXPOSE 80