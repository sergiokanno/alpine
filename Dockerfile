ARG ALPINE_VERSION=3.17
FROM alpine:${ALPINE_VERSION}

# Processo: Listar diretório no terminal
ENTRYPOINT ["ls"]
CMD ["-alh"]
