FROM alpine:3.19

# instalando dependências no SO
RUN apk add --no-cache nodejs && \
    apk add --no-cache npm    && \
    apk add --no-cache git
