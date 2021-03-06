# Path
export PATH="/usr/local:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
    export PATH="$HOME/scripts:$PATH"
fi

if [ -d "$HOME/bin.local" ] ; then
    export PATH="$HOME/bin.local:$PATH"
    export PATH="$HOME/scripts.local:$PATH"
fi

export XDG_CONFIG_HOME=${HOME:?}/.config

for config in "${XDG_CONFIG_HOME:?}"/bashrc.d/*.sh{,.local}; do
  test -r "$config" && . "$config"
done
unset config

# Flag that profile has been sourced. This
# is so that .bashrc can source it for non-longin
# shells (e.g. codespaces) without an infinate loop.
export INIT_PROFILE_WAS_SOURCED=true
test -r ~/.bashrc && . ~/.bashrc


