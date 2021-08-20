FROM registry.hub.docker.com/library/alpine:3.14.0

# Install utilities
# hadolint ignore=DL3018
RUN apk update && apk --no-cache add curl busybox-extras g++ make py3-pip tcpdump 

# Installing httpie ( https://httpie.io/docs#installation)
RUN pip3 install --upgrade --no-cache-dir httpie==2.4.0

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
