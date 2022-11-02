FROM debian

ADD buildit.sh runit.sh Dockerfile /
RUN apt-get update && apt-get -y install vim openssl curl ca-certificates wget git less unzip net-tools file jq psmisc procps \
  && apt-get -y install zip gpg \
  && echo 'set paste' >> /etc/vim/vimrc.local \
  && echo 'set noautoindent' >> /etc/vim/vimrc.local \
  && echo 'set mouse=c' >> /etc/vim/vimrc.local \
  && cd /usr/share/vim/vim*/ \
  && echo 'set mouse=c' >> defaults.vim \
  && perl -pi -e 's/filetype plugin indent on/"filetype plugin indent on/g' defaults.vim \
  && cd - \
  && echo 'export PATH="$PATH:/usr/local/go/bin"' >> /etc/bash.bashrc \
  && curl -L https://go.dev/dl/go1.18.3.linux-amd64.tar.gz | tar -C /usr/local -xzv \
  && cd /usr/local/bin \
  && curl -o terraform.zip -L -k https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_linux_amd64.zip \
  && unzip terraform.zip && rm terraform.zip \
  && curl -o tfpluginwebsite.zip -L -k https://github.com/hashicorp/terraform-plugin-docs/releases/download/v0.1.4/tfpluginwebsite_0.1.4_linux_amd64.zip \
  && unzip tfpluginwebsite.zip tfpluginwebsite \
  && chmod 755 /usr/local/bin/*

CMD bash
