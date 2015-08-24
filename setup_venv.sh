VENV=~/.emacs.d/venv

virtualenv $VENV --prompt="(emacs))"
source $VENV/bin/activate
pip install jedi==0.8.1-final0
pip install flake8

VENV3=~/.emacs.d/venv3

pyvenv $VENV3
source $VENV3/bin/activate
pip install jedi==0.8.1-final0
pip install flake8
