FROM debian

RUN echo "gitpod:x:0:0::/home/gitpod:/bin/bash" > /etc/passwd

USER gitpod
