FROM alpine:latest

RUN  apk update --no-cache \
  && apk add --no-cache \
      curl \
      fish \
      git \
      nmap \
      recon-ng \
  && curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish \
  && /usr/bin/fish -c "fisher add matchai/spacefish"

CMD ["/usr/bin/fish"]
