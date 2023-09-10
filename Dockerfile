FROM debian:latest

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install apcupsd
COPY entrypoint.sh /
RUN apt-get clean
EXPOSE 3551

CMD /entrypoint.sh
