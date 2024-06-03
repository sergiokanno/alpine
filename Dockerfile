FROM alpine:3.19

# instalando dependências no SO
RUN apk add --no-cache nodejs
RUN apk add --no-cache npm
