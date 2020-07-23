FROM rust:1.44.1-slim

# Docker Container for Building cloudformation-guard binary for Linux.

RUN apt-get update && apt-get install -y build-essential git
ADD makebin.sh /tmp/makebin.sh

ENTRYPOINT [ "/tmp/makebin.sh" ]