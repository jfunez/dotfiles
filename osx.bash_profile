source $HOME/.bashrc

# pyenv setup
# -----------
# to install: brew install pyenv
# then:
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init -)" 

# pyenv-virtualenv setup
# ----------------------
# to install: brew install pyenv-virtualenv
# then:
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
# -----------------------------
# to create a virtualenv: 
# pyenv virtualenv 3.7.1 .venv
# -----------------------------
# to activate a virtualenv:
# pyenv activate .venv
# -----------------------------
# to deactivate a virtualenv:
# pyenv deactivate

