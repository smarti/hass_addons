ARG BUILD_FROM
FROM $BUILD_FROM

# Setup base
RUN apk add --no-cache openssh sshpass

# Copy data
COPY data/run.sh /
COPY data/sshtunnel.sh /

# Setup access
RUN chmod 770 /run.sh

CMD [ "/run.sh" ]
