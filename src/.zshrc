#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Install asdf command if available.
# See https://github.com/asdf-vm/asdf for more info.
[ -s "$HOME/.asdf/asdf.sh" ] && source $HOME/.asdf/asdf.sh
[ -s "$HOME/.asdf/completions/asdf.bash" ] && source $HOME/.asdf/completions/asdf.bash

# Install kubectl completions if available.
# See https://kubernetes.io/docs/reference/generated/kubectl/kubectl/ for more info.
command -v kubectl > /dev/null 2>&1 && source <(kubectl completion zsh)

# Install minikube completions if available.
# See https://github.com/kubernetes/minikube for more info.
command -v minikube > /dev/null 2>&1 && source <(minikube completion zsh)

# Install virtualenvwrapper commands if available.
# See https://virtualenvwrapper.readthedocs.io/en/latest for more info.
[ -s /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper_lazy.sh

# Install shared aliases if found in home directory.
[ -s "$HOME/.aliases" ] && source $HOME/.aliases

# Install local environment if found in home directory.
[ -s "$HOME/.localrc" ] && source $HOME/.localrc
