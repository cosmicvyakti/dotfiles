# Interactive Zsh configuration

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=20000
SAVEHIST=20000
setopt share_history inc_append_history extended_history
setopt hist_ignore_dups hist_ignore_all_dups hist_save_no_dups
setopt hist_reduce_blanks hist_verify

# Key bindings
bindkey -v

# Completion
autoload -Uz compinit
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.zcompcache"
compinit -d "$HOME/.zcompdump"

# Prompt
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
if command -v starship >/dev/null 2>&1; then
  if [[ -z "${STARSHIP_INIT_DONE:-}" ]]; then
    export STARSHIP_INIT_DONE=1
    eval "$(starship init zsh)"
  fi
fi

# Tools
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook zsh)"
fi

if command -v mise >/dev/null 2>&1; then
  eval "$(mise activate zsh)"
fi

if command -v fzf >/dev/null 2>&1; then
  source <(fzf --zsh)

  fzf-history-widget() {
    local selected
    selected=$(fc -rl 1 | sed 's/^[[:space:]]*[0-9]*[[:space:]]*//' | \
      fzf --no-sort --height 40% --layout=reverse --info=inline \
          --prompt='history> ' \
          --bind='tab:down,shift-tab:up,ctrl-t:top') || return
    LBUFFER+="$selected"
    zle redisplay
  }
  zle -N fzf-history-widget
  bindkey '^R' fzf-history-widget
fi

# Aliases
if command -v eza >/dev/null 2>&1; then
  alias ls='eza --group-directories-first'
  alias ll='eza -al --group-directories-first --git'
  alias la='eza -a --group-directories-first'
fi

if command -v bat >/dev/null 2>&1; then
  alias cat='bat --style=plain --paging=never'
fi

# Git helpers
alias g='git'
alias gst='git status -sb'
alias gl='git log --oneline --decorate --graph -n 15'

# Startup profiling: run `ZSH_PROFILE=1 zsh -i` to print timing
if [[ -n "${ZSH_PROFILE:-}" ]]; then
  zmodload zsh/zprof
  zprof
fi

# Autosuggestions
if [[ -r /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [[ -r /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Syntax highlighting (must be last)
if [[ -r /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -r /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# WezTerm Configuration
if [[ -r ~/.config/wezterm/wezterm.lua ]]; then
  export WEZTERM_CONFIG_FILE="$HOME/.config/wezterm/wezterm.lua"
fi

# user aliases
if [[ -r ~/.aliases.zsh ]]; then
  source ~/.aliases.zsh
fi