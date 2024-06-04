ARG ALPINE_VERSION=3.17
FROM alpine:${ALPINE_VERSION}

# Serviço: Imprimir um texto no terminal
ENTRYPOINT ["echo", " Texto exibido via ENTRYPOINT do DOCKER", "\n"]
CMD ["Texto exibido via CMD do DOCKER"]
