# c11k/serviceandgoods:xdebug
# For unit testing and deployment
# Set the base image for subsequent instructions
FROM c11k/serviceandgoods:latest

# Update packages
RUN apt-get update \
	&& apt-get -y --no-install-recommends install \
        php-xdebug \
    && apt-get autoremove -y \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
