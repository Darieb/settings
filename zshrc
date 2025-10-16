export CLICOLOR
#typeset -T LD_LIBRARY_PATH ld_library_path :
typeset -T PATH path :
typeset -T MANPATH manpath :
path+=(~/myApplications)
manpath+=(/usr/local/share/man)

HISTSIZE=1000
HISTCONTROL=ignoredups:erasedups
setopt share_history

source ~/.alias
# to support n1mm for contesting
#export WINEPREFIX=~/.wine_n1mm
#export WINEARCH=win32
n1mm_dir="/Users/declan/.wine/drive_c/Program\ Files\ (x86)/N1MM Logger+"
n1mm_prog="$n1mm_dir/N1MMLogger.net.exe"
n1mm_data="/Users/declan/.wine/drive_c/users/declan/Documents/N1MM\ Logger+"

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%2~%f%b %# '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Created by `pipx` on 2025-08-10 17:57:22
export PATH="$PATH:/Users/declan/.local/bin"
