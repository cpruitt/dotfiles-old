# Just a basic editor to start with
if [ -n "$(command -v nano)" ]
then
  export EDITOR='nano'
  export GIT_EDITOR="$EDITOR"
fi

# If we have code installed use that instead
if [ -n "$(command -v code)" ]
then
  export EDITOR='code -w'
  export GIT_EDITOR="$EDITOR"
fi
