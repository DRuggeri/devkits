FROM debian

ADD buildit.sh runit.sh Dockerfile /
RUN apt-get update && apt-get -y install vim openssl curl ca-certificates wget git less unzip net-tools file jq psmisc procps \
  && apt-get -y install zip gpg \
  && echo 'set paste' >> /etc/vim/vimrc.local \
  && echo 'set noautoindent' >> /etc/vim/vimrc.local \
  && echo 'set mouse=c' >> /etc/vim/vimrc.local \
  && echo 'set mouse=c' >> /usr/share/vim/vim81/defaults.vim \
  && perl -pi -e 's/filetype plugin indent on/"filetype plugin indent on/g' /usr/share/vim/vim81/defaults.vim \
  && echo 'export PATH="$PATH:/usr/local/go/bin"' >> /etc/bash.bashrc \
  && curl https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz | tar -C /usr/local -xzv \
  && cd /usr/local/bin \
  && curl -o terraform.zip -L -k https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip \
  && unzip terraform.zip && rm terraform.zip \
  && curl -o tfpluginwebsite.zip -L -k https://github.com/hashicorp/terraform-plugin-docs/releases/download/v0.1.4/tfpluginwebsite_0.1.4_linux_amd64.zip \
  && unzip tfpluginwebsite.zip tfpluginwebsite \
  && chmod 755 /usr/local/bin/*

CMD bash
