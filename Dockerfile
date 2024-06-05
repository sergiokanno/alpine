ARG ALPINE_VERSION=3.19

FROM alpine:${ALPINE_VERSION}

WORKDIR /

RUN mkdir ./logs/

RUN echo "1 - Diretório de trabalho atual: $(pwd)" > /logs/1.txt

RUN <<EOF
    apk add --no-cache nodejs 
    apk add --no-cache npm
EOF

WORKDIR /opt/
RUN echo "2 - Diretório de trabalho atual: $(pwd)" > /logs/2.txt

ADD https://argus-academy.com/cursos/docker_-_dominando_a_criacao_e_o_gerenciamento_de_containers/server.tar.gz ./code/

WORKDIR /opt/code/
RUN echo "3 - Diretório de trabalho atual: $(pwd)" > /logs/3.txt

RUN tar xvzf server.tar.gz \
    && rm server.tar.gz

ENTRYPOINT [ "node" ]
CMD [ "server.js" ]

EXPOSE 3000/tcp
EXPOSE 3000/udp
