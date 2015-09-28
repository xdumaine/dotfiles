case ":$PATH:" in
  *:$HOME/bin:*) ;;     # do nothing if $PATH already contains $HOME/bin
  *) PATH=$HOME/bin:$PATH ;;  # in every other case, add it to the front
esac

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

. ~/.functions

ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" ~/bin/diff-highlight

alias chrome-unsafe="open -a Google\ Chrome --args --disable-web-security"
alias chrome-screensharing="open -a Google\ Chrome --args --enable-usermedia-screen-capturing"
alias chrome-devices="open -a Google\ Chrome --args --enable-blink-features=EnumerateDevices,AudioOutputDevices"
alias fuck='eval $(thefuck $(fc -ln -1))'
alias jitsi="./jvb.sh --secret=not-really-secret --apis=rest,xmpp --domain=inin.com"
alias realtime="n 0.10 && ./run --env=dca-docker"

PS1="\[\033[36m\]\w \[\033[32m\]\$(__git_ps1)\[\033[m\]\$ "
