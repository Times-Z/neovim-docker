ARG ALPINE_VERSION=3.17.2

FROM alpine:${ALPINE_VERSION}

ENV UID=1000
ENV GUID=1000
ENV USR=neovim
ENV GRP=neovim
ENV BUILD_PACKAGE="alpine-sdk \
    build-base \
    cargo \
    g++ \
    make \
    rust \
    yarn \
    "

RUN apk update \
    && apk add --no-cache \
        ${BUILD_PACKAGE} \
        bash \
        composer \
        curl \
        git \
        make \
        neovim \
        neovim-doc \
        nodejs \
        openssh \
        php-cli \
        python3 \
        py3-psutil \
        ranger \
        ripgrep \
        wget \
        xclip \
    && python -m ensurepip --upgrade \
    && pip3 install --upgrade pip \
    && addgroup -g "${GUID}" "${GRP}" \
    && adduser -u "${UID}" -h "/home/${USR}" -G "${GRP}" "${USR}" --disabled-password \
    && mkdir -p "/home/${USR}/.phpactor" \
    && git clone https://github.com/phpactor/phpactor.git "/home/${USR}/.phpactor" \
    && cd "/home/${USR}/.phpactor" \
    && composer install --ignore-platform-reqs \
    && ln -s "/home/${USR}/.phpactor/bin/phpactor /usr/bin/phpactor" \
    && cd / \
    && yarn global add node-gyp \
    && yarn global add \
        ansible-language-server \
        awk-language-server \
        bash-language-server \
        cssmodules-language-server \
        @cucumber/language-server \
        dockerfile-language-server-nodejs \
        emmet-ls \
        intelephense \
        yaml-language-server \
        vscode-langservers-extracted \
    && pip3 install python-lsp-server pyright pyre-check --no-cache-dir \
    && yarn cache clean --all \
    && apk del ${BUILD_PACKAGE}

USER ${USR}

ADD --chown=${USR}:${GRP} config /home/${USR}/.config/nvim

RUN nvim --headless -c 'autocmd User PackerComplete quitall'

WORKDIR /home/${USR}