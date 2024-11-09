FROM ubuntu:latest

#install deps
RUN apt-get update && apt-get install -y bash
COPY ./hello /usr/local/bin

ENTRYPOINT ["/bin/bash"]