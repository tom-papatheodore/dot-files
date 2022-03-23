## Set prompt format ---------------------------------------------------
if [[ -z "${system_name}" ]]; then
    export system_name=$(hostname)
fi

export PS1="\[\e[0;90m\][${system_name}: \w]\$\[\e[m\] "

## Source the aliases file ---------------------------------------------
source $HOME/.aliases
