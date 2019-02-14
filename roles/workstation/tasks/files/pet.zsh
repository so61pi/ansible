if [[ ! "$PATH" == *$HOME/.pet/bin* ]]; then
  export PATH="$PATH:$HOME/.pet/bin"
fi

function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^s' pet-select
