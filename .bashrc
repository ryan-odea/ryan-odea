# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#To load specific MX enviroment for each shell, uncomment one of the two following lines:
#. /etc/scripts/mx_sls.sh
#. /etc/scripts/mx_fel.sh

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# General Aliases
alias cls='clear && ls'
cds() {
	cd "$1" && ls
}
alias c='clear'

#SLURM Aliases
alias sq='squeue -u $(whoami)'
alias sc='echo "Cancel all jobs? (y/n)" && read ans && [[ $ans == y* || $ans == Y* ]] && scancel -u $(whoami)'

# Git
alias g='git'
alias gg='git status'
alias gc='git commit -am'
alias pull='git pull'
alias push='git push'

# PSI RA Cluster
alias snake='module load anaconda'
alias crystal='module load crystfel/0.12.0'
alias gen='conda activate general'
alias deactivate='conda deactivate'