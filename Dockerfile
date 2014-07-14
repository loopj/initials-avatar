FROM ubuntu:14.04
MAINTAINER James Smith <james@loopj.com>

# Update ubuntu
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install dependencies
RUN apt-get install -y build-essential ruby-dev libmagickwand-dev imagemagick ruby2.0 git && gem install bundler

# Clone repo and install gems
RUN mkdir /apps
RUN git clone https://github.com/loopj/initials-avatar.git /apps/initials-avatar
RUN cd /apps/initials-avatar && bundle install

# Install passenger standalone
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
RUN apt-get install -y apt-transport-https ca-certificates
RUN echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main" > /etc/apt/sources.list.d/passenger.list
RUN apt-get update
RUN apt-get install -y passenger

# Make passenger standalone startup script
RUN /bin/echo -e '#!/bin/bash\ncd /apps/initials-avatar\npassenger start --port 80' > /usr/bin/initials-avatar.sh
RUN chmod +x /usr/bin/initials-avatar.sh

# Expose port 80
EXPOSE 80

# Boot the passenger processes
ENTRYPOINT ["/usr/bin/initials-avatar.sh"]
