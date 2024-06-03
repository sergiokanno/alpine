ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

# instalando dependências no SO
RUN apk add --no-cache nodejs && \
    apk add --no-cache npm    && \
    apk add --no-cache git
