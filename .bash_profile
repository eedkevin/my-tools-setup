# Java Home
export JAVA_HOME=$(/usr/libexec/java_home)

# Go path
export GOPATH=$HOME/projects/GO
export PATH=$GOPATH/bin:$PATH

# Bash completion support for kubernetes
source $(brew --prefix)/etc/bash_completion

# Kubernetes config
export KUBECONFIG=$(ls -d -1 $HOME/.kube/*config* | paste -sd ":" -)

# Kubernetes context highlight
NORMAL="\[\033[00m\]"
BLUE="\[\033[01;34m\]"
YELLOW="\[\e[1;33m\]"
RED="\[\033[0;31m\]"
GREEN="\[\e[1;32m\]"
source ~/.kube-prompt.sh
#export PS1="${BLUE}\W ${GREEN}\u${YELLOW}\$(__kube_ps1)${NORMAL} \$ "
#export PS1="$\W \u\$(__kube_ps1) \$ "
export PS1="${GREEN}\u${YELLOW}\$(__kube_ps1)${NORMAL} ${BLUE}\W \$ "

# envsubst
export PATH=${PATH}:/usr/local/opt/gettext/bin

# vim-plug
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

