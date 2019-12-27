if [[ ! "$PATH" == *$HOME/bin/pet* ]]; then
  export PATH="$PATH:$HOME/bin/pet"
fi

function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^s' pet-select
