FROM alpine:3.9
LABEL maintainer="Ivo Woltring - @ivonet"

COPY startapp.sh /startapp.sh

RUN apk add curl bash\
 && curl -sL -o /usr/local/bin/genact https://github.com/svenstaro/genact/releases/download/0.7.0/genact-linux \
 && apk del curl \
 && chmod +x /usr/local/bin/genact /startapp.sh

ENTRYPOINT /startapp.sh
