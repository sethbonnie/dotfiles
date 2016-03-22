if [ -f ~/.aliases/default ]; then
  source ~/.aliases/default
fi

if [ -f ~/.exports ]; then
  source ~/.exports
fi

function src {
  if [ -f ~/.aliases/$1 ]; then
    source ~/.aliases/$1
  elif [ -z "$1" ]; then
		source ~/.bash_profile
	else
		source $@
	fi
}

function quit {
	exit
}
