export PATH="/usr/local/bin:$HOME/bin:$PATH"
export PYTHONPATH="$HOME/Development/nampy-lite"
export BLASTDB="$HOME/Data/blast"

#Bind commands
bind 'set completion-ignore-case on'
bind 'set completion-map-case on'
#bind 'set show-all-if-ambiguous on'

alias ls='ls -G'
alias ll='ls -lhG'

alias grep='grep -E'
alias xdiff='opendiff'
alias qpython='ipython qtconsole --pylab=inline'
alias pylab='ipython --pylab'

alias igc1='ssh -Y igc1'
alias igc2='ssh -Y igc2'
alias amber='ssh -Y amber'
alias wintermute='ssh -X wintermute'

# open man pages as PDF
function man2pdf(){ man -t ${1:?Specify man as arg} | open -f -a preview; }

# Make new screen windows open in the current directory                                             
scr_cd()
{
    cd $1
    screen -X chdir $PWD
}
if [ "$TERM" == 'screen' ]; then
    alias cd=scr_cd
fi

BLACK="\[\033[0;30m\]"
GRAY="\[\033[0;90m\]"
BOLDGRAY="\[\033[1;90m\]"
export PS1="$GRAY[\t]$BOLDGRAY \h:$BLACK\w \\$ "
export PROMPT_DIRTRIM=2

# added by Anaconda 1.8.0 installer
export PATH="$HOME/anaconda/bin:$PATH"
