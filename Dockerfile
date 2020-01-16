FROM docker

LABEL maintainer Torsten Wolter <tow.berlin@gmail.com>

RUN apk --update add git less openssh nodejs npm && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
