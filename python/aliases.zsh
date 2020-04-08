alias py=python
alias pi=pip
alias pe=pipenv
alias pipuninstall="pip freeze --local | xargs pip uninstall -y"

function pyformat(){
    autoflake -r --ignore-init-module-imports --remove-all-unused-imports --in-place $@
    isort $@
    black $@
}
