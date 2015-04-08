# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
alias screen="screen -e ^Wa"
alias more='less'
alias mkpass='head -c8 /dev/random | uuencode -m - | sed -n '\''2s/=*$//;2p'\'''
alias area="ssh david@www.areabingo.com"
alias diffss='diff --width=180 --suppress-common-lines --side-by-side'
alias jump1="ssh -i /home/david/dathornton.openssh dathornton@localhost -p 2222"
alias nex="ssh david@localhost -p 2221"
alias ps="ps -auwwwxf"
alias scalar='ssh dthornton@74.213.172.115'
alias ubc='ssh david@142.103.241.208'
alias now='date +%Y%m%d%H%M%S'
alias borg='ssh root@borg'

#export EDITOR=/bin/vi
export EDITOR=/usr/bin/vi
export CVSROOT=/var/cvs
alias cvsls='find . | grep -v CVS'
alias cvsstatus='cvs status | grep ^F  | grep -v Up-to-date'
alias cvsdiff='cvs diff --side-by-side --width=180 --suppress-common-lines'
alias audbyte="git pull dthornton@testsrv.opensitesolutions.com:/home/dthornton/tmp/Audbyte master"

export HISTTIMEFORMAT='%F %T '

stty erase ^?

export PS1='[\u@\H \W]\$ '
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
