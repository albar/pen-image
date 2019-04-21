FROM alpine:latest

ENV COMMON_PKGS\
      curl\
      fish\
      git

ENV PEN_PKGS\
      nmap\
      recon-ng

RUN  apk update --no-cache \
  && apk add --no-cache $COMMON_PKGS $PEN_PKGS \
  && curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish \
  && /usr/bin/fish -c "fisher add matchai/spacefish"

CMD ["/usr/bin/fish"]
