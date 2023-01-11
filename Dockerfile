
# Use the latest version of Ubuntu
FROM ubuntu:latest

# Update the repository sources list
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y apache2 apache2-utils
RUN apt-get clean

WORKDIR /var/www/html

# Copy the files to the webserver
ADD files/* /var/www/html

# Expose port 80 and 8888
EXPOSE 80
EXPOSE 8888

CMD ["apache2ctl", "-D","FOREGROUND"]

