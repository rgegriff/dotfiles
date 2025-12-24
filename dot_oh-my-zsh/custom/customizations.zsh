# Add local bin dir
export PATH=$PATH:~/bin
export PATH=$PATH:~/.local/bin

# Install Flutter to PATH
export PATH="${PATH}:/home/george/Code/flutter/bin"

#eval $(thefuck --alias darn)
#eval $(thefuck --alias)

export EDITOR=nvim

# Add android platform tools
export PATH=$PATH:/home/george/Android/Sdk/platform-tools

function xo(){
    xdg-open $1 > /dev/null 2>&1
}

# Activate NVM
if [ -d "${HOME}/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

alias yeet="sudo apt-get remove"
alias yoink="sudo apt-get install"
alias cat="echo \"🐱Meow!\"; cat"
alias fp="ps aux | grep -i"
alias thanks="echo \"You're very welcome!\""
function checkcertdate() {
    openssl s_client -connect $1:443 2>/dev/null | openssl x509 -noout -dates
}

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias bfg="java -jar ~/bin/bfg-1.14.0.jar"
alias standup="cat ~/.teamstanduptemplate | xsel --clipboard"
alias g="jump"
alias s="bookmark"
alias d="deletemark"
alias p="showmarks"


# radio
alias arirang="streamlink https://amdlive-ch03-ctnd-com.akamaized.net/arirang_3ch/smil:arirang_3ch.smil/chunklist_b656000_sleng.m3u8 --hls-live-edge 20 --player \"mpv --no-video\" --default-stream live -l debug --ringbuffer-size 100MB --hls-live-restart --stream-segment-threads 3"

alias ass="apt search"

eval "$(jira completion zsh)"

alias popforward="sudo -E -- setpriv --inh-caps +net_bind_service --ambient-caps +net_bind_service --reuid $USERNAME ssh PopOS"
eval "$(uv generate-shell-completion zsh)"

# Neovim
if [ -d /opt/nvim-linux-x86_64 ]; then
	export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
fi

# Go
export PATH=$PATH:/usr/local/go/bin
