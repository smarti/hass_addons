ARG BUILD_FROM
FROM $BUILD_FROM

# Setup base
RUN apk add --no-cache openssh sshpass openrc

# Copy data
COPY data/run.sh /
COPY data/sshtunnel.sh /

CMD [ "/run.sh" ]