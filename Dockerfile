FROM alpine:latest

RUN  echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk update --no-cache \
    && apk add --no-cache \
        curl \
        fish \
        git \
        nmap \
        recon-ng \
    && curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

RUN /usr/bin/fish -c "fisher add matchai/spacefish"

CMD ["/usr/bin/fish"]
