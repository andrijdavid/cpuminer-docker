FROM debian

# Install the required packages to compile the binary
RUN apt-get update && \
    apt-get install -y build-essential git libssl-dev zlib1g-dev libgmp-dev libcurl4-openssl-dev libjansson-dev automake && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create a volume to store the compiled binary
VOLUME /workdir
WORKDIR  /workdir
COPY ./scripts /scripts

ENTRYPOINT [ "bash", "/scripts/startup.sh" ]