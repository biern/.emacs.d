VENV=~/.emacs.d/venv

virtualenv $VENV --prompt="(emacs))"
source $VENV/bin/activate
pip install jedi==0.8.1-final0
pip install flake8
