FROM debian:stretch-slim

RUN apt-get update && apt-get install curl -y

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
