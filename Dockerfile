FROM alpine:edge

ENV UID 1000
ENV GUID 1000
ENV USR neovim
ENV GRP neovim
ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

RUN apk update \
    && apk add --no-cache \
        alpine-sdk \
        build-base \
        composer \
        curl \
        git \
        go \
        neovim \
        neovim-doc \
        nodejs \
        npm \
        php8-cli \
        ranger \
        ripgrep \
        tree-sitter \
        wget \
        xclip \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && addgroup -g ${GUID} ${GRP} \
    && adduser -u ${UID} -h "/home/${USR}" -G "${GRP}" ${USR} --disabled-password \
    && npm install -g typescript sass

USER ${USR}

RUN git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

ADD --chown=$USR:$GRP app /home/${USR}/.config/nvim/lua/custom

RUN nvim --headless +"autocmd User PackerComplete sleep 100m | qall" +PackerSync

WORKDIR /home/${USR}