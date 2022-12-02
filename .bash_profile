# Java Home
# export JAVA_HOME=$(/usr/libexec/java_home)

# Go path
export GOPATH=$HOME/projects/GO
export PATH=$GOPATH/bin:$PATH

# ssh-key
ssh-add ~/.ssh/*_rsa > /dev/null 2>&1

# Bash completion support for kubernetes
# source $(brew --prefix)/etc/bash_completion

# Kubernetes config
# export KUBECONFIG=$(ls -d -1 $HOME/.kube/*config* | paste -sd ":" -)

# envsubst
# export PATH=${PATH}:/usr/local/opt/gettext/bin

# vim-plug
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

