FROM debian:latest
LABEL MAINTAINER="https://github.com/Epavinath"

WORKDIR /Paviphishing/
ADD . /Paviphishing

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./Paviphishing.sh"]
