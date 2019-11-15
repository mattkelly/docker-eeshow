FROM ubuntu:19.10

RUN apt-get update && \
        apt-get install -y \
        git \
        libgtk-3-dev \
        libcairo2-dev \
        libgit2-dev \
        transfig \
        imagemagick \
        bsdmainutils

RUN git clone http://neo900.org/git/eeshow
RUN cd eeshow && make && make install

ENTRYPOINT ["eeplot"]
