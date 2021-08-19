if [ "$INIT_PROFILE_WAS_SOURCED" != "true" ]
then
    [ -s ~/.profile ] && source ~/.profile
fi

for config in "$XDG_CONFIG_HOME"/bashrc.d/*.bash{,.local}; do
  test -r "$config" && . "$config"
done

#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


