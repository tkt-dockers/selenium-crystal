FROM selenium/standalone-chrome

SHELL ["/bin/bash", "-c"]

RUN sudo apt-get update \
  && sudo apt install -y libyaml-dev libxml2-dev vim git gcc libpcre3-dev libevent-dev pkgconf libssl-dev zlib1g-dev libgmp-dev libreadline-dev

ARG CRYSTAL_VER=0.32.1
ENV CRYSTAL_CACHE_DIR $HOME/.cashe/crystal

RUN curl -sL "https://github.com/crystal-lang/crystal/releases/download/${CRYSTAL_VER}/crystal-${CRYSTAL_VER}-1-linux-x86_64.tar.gz" | sudo tar zx -C / \
  && sudo mv /crystal-${CRYSTAL_VER}-1/bin/* /usr/bin/ \
  && sudo mv /crystal-${CRYSTAL_VER}-1/lib/* /usr/lib/ \
  && sudo mv /crystal-${CRYSTAL_VER}-1/share/crystal /usr/share/ \
  && sudo mv /crystal-${CRYSTAL_VER}-1/share/doc/* /usr/share/doc/ \
  && sudo mv /crystal-${CRYSTAL_VER}-1/share/licenses/* /usr/share/licenses/ \
  && sudo rm -rf /crystal-${CRYSTAL_VER}-1

RUN sudo chown -R seluser:seluser $HOME/.cashe/crystal
