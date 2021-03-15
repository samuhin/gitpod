FROM debian

USER root

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y sudo jupyter

RUN echo "root    ALL=(ALL:ALL) ALL" > /etc/sudoers
RUN echo "gitpod    ALL=(ALL:ALL) ALL" >> /etc/sudoers

CMD ["jupyter", "notebook", \
"--ip", "0.0.0.0", "--allow-root",\
"--NotebookApp.token=''", "--NotebookApp.password=''", "--no-browser", "/" ]
