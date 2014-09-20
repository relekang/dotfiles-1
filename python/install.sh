#!/bin/sh

echo "Installing Python dependencies"
install_python_dependency() {
  if test ! $(which $2)
  then
    echo "  Installing ${1} for you."
    pip install $1 > /tmp/$1-install.log
  else
    echo "  ${1} already installed."
  fi
}

if test ! $(which pip)
then
  echo "  Installing pip for you."
  wget https://bootstrap.pypa.io/get-pip.py > /tmp/pip-install.log
  python get-pip.py >> /tmp/pip-install.log
else
  echo "  pip already installed."
fi

install_python_dependency virtualenv virtualenv
install_python_dependency virtualenvwrapper virtualenvwrapper.sh
install_python_dependency flake8 flake8
install_python_dependency tox tox
install_python_dependency fabric fab
