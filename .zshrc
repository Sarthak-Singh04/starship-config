# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Load Dracula theme

source ~/.dracula/dracula.zsh-theme


# Set name of the theme to load.
ZSH_THEME="robbyrussell"  # or any other theme you prefer

# Add plugins.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

# Source the oh-my-zsh script.
source $ZSH/oh-my-zsh.sh

# Load Powerlevel10k theme (optional).
# You need to clone the Powerlevel10k repository first as shown in previous steps.
# ZSH_THEME="powerlevel10k/powerlevel10k"

# If you want to use Powerlevel10k, you can uncomment the line above and comment out ZSH_THEME="robbyrussell".

# Source Powerlevel10k configuration (optional).
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings.
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History settings.
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases.
alias ls='ls --color'
alias vim='nvim'
alias c='clear'

# Shell integrations.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"
