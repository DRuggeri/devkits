FROM node

ADD buildit.sh runit.sh Dockerfile /
RUN apt-get update && apt-get -y install vim openssl curl ca-certificates wget git less unzip net-tools file jq psmisc procps \
  && echo 'set paste' >> /etc/vim/vimrc.local \
  && echo 'set noautoindent' >> /etc/vim/vimrc.local \
  && echo 'set mouse=c' >> /etc/vim/vimrc.local \
  && echo 'set mouse=c' >> /usr/share/vim/vim81/defaults.vim \
  && perl -pi -e 's/filetype plugin indent on/"filetype plugin indent on/g' /usr/share/vim/vim81/defaults.vim

CMD bash
