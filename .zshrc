# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi





# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


#correcting ctrl+arrow behaviour
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
# Created by newuser for 5.8

#theme and auto suggestions
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#plugins=(zsh-autosuggestions)
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh
source /home/kali/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. /usr/share/autojump/autojump.sh

#aliases
source $HOME/.config/zsh/aliasrc


# Custom ZSH Binds
bindkey '^ ' autosuggest-accept



# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme





#ENVIRONMENT VARIABLES
export MEDIUM="/usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt"

export RAFT="/usr/share/seclists/Discovery/Web-Content/raft-medium-directories-lowercase.txt"
export SUB="/usr/share/seclists/Discovery/DNS/subdomains-top1million-20000.txt"


# OH MY ZSH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/.oh-my-zsh

# OHMYZSH plugins

plugins=(command-not-found)

source $ZSH/oh-my-zsh.sh

# Disable shared history between panes
unsetopt share_history

#Nmap privileged mode
export NMAP_PRIVILEGED=""

# To execute !! directly
unsetopt HIST_VERIFY


# Exporting JDK path for Ghidra
export PATH=$PATH:/opt/jdk/jdk-11.0.10+9/bin

# Exporting python3 path for installed libraries - opencv2
export PATH=$PATH:/home/kali/.local/lib/python3.9/site-packages
export PATH=$PATH:/home/kali/.local/bin
#
#
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kali/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kali/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kali/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kali/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


PATH="/home/kali/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/kali/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kali/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/kali/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kali/perl5"; export PERL_MM_OPT;





