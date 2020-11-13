# -*- mode: sh; encoding: utf-8; tab-width: 4; indent-tabs-mode: nil; -*-

typeset -U path
path=(
    $HOME/local/sbin(N-/)
    $HOME/local/bin(N-/)
    $path
)

typeset -xT SUDO_PATH sudo_path
sudo_path=(
    /usr/local/sbin(N-/)
    /usr/sbin(N-/)
    /sbin(N-/)
    /opt/sbin(N-/)
)

export EDITOR=`if where vim > /dev/null; then
    echo =vim
else
    echo =vi
fi`

export PAGER==less
export LESS='-MRx4#4'

PATH=/usr/src/Play20:$PATH

# vim:set ft=sh fenc=utf-8 ts=4 sw=4 sts=4 et:

export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
