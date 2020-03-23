FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y wget perl \
    && wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean


ENV PATH="${PATH}:/root/bin"

RUN tlmgr install babel-spanish babel-english epstopdf-pkg moderncv colortbl enumitem pgf marvosym
