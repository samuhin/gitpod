FROM debian

RUN echo "root:x:0:0:root:/root:/bin/bash" > /etc/passwd
RUN echo "gitpod:x:0:0::/home/gitpod:/bin/bash" >> /etc/passwd

USER gitpod
