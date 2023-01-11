# Create a dockerfile that starts a webserver 
# that displays the files Static-index.html and LI-ln-Bug.PNG
# in the directory /var/www/html

# Use the latest version of Ubuntu
FROM ubuntu:latest

# Update the repository sources list
RUN apt-get update -y && apt-get upgrade -y && apt-get install -y apache2 apache2-utils
RUN apt-get clean

WORKDIR /var/www/html

# Copy the files to the webserver
ADD files/* /var/www/html

# Expose port 80
EXPOSE 8888


# Set the default command to execute
# when creating a new container
CMD ["apache2ctl", "-D","FOREGROUND"]

