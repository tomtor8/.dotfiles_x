source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# enable colors in autocomplete for directories, files, aliases and commands
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:options' list-colors '=^(-- *)=34'
zstyle ':completion:*:aliases' list-colors '=*=2;38;5;128'
zstyle ':completion:*:commands' list-colors '=*=1;31'
zstyle ':completion:*:builtins' list-colors '=*=1;38;5;142'


# Set up the prompt

# autoload -Uz promptinit
# promptinit
# prompt adam1

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

#PLUGINS
# z plugin for quick filesystem navigation
source ~/.config/zsh/zsh-z.plugin.zsh
# zsh-autosuggestions plugin, cloned from github
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH="/home/tom/.local/bin:/home/tom/bin:$PATH"

source ~/.zshrc_aliases

#CLEAN THEME
#source ~/.config/zsh/clean.zsh-theme

# fzf
# enable fzf keybindings ctrl t ctrl r alt c
source /usr/share/fzf/shell/key-bindings.zsh

# tomasr/molokai theme
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border --inline-info --margin=1 --padding=1 --color=spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934'
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --style=numbers --line-range :500 {}'"

# nnn
source ~/.dotfiles_x/nnn_x/nnn.config

# enable homebrew in shell
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

eval "$(starship init zsh)"

source /home/tom/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

