FROM debian

RUN apt-get update && apt-get install -y sudo
RUN echo "root    ALL=(ALL:ALL) ALL" > /etc/sudoers
RUN echo "gitpod    ALL=(ALL:ALL) ALL" >> /etc/sudoers
RUN chmod 777 /etc/passwd

USER gitpod
