# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Nikolaos Nasios

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

# Install Python and Basic Python Tools
RUN apt-get install -y python3 python3-dev python3-pip

# Copy the application folder inside the container
ADD app python-app

# Deploy the application from git repository
#RUN git clone

# Get pip to download and install requirements:
RUN pip install -r requirements.txt

# Expose ports
EXPOSE 80

# Set the default directory where CMD will execute
WORKDIR python-app

# Set the default command to execute
# when creating a new container
# i.e. using CherryPy to serve the application
CMD python3 server.py
