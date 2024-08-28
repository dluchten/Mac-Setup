# MBP setup
## Install recommended updates
`softwareupdate -ir --verbose`

## Install xcode (appstore)

## Install Homebrew and Cask
If xcode is not installed, this will automatically install xcode command line tools (c compiler etc.)\
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## LaTeX
`brew cask install basictex`,or full package \
`brew cask install mactex`

## Rectangle (Split screen)
`brew cask install rectangle`

## Git
`brew cask install git`



## Install Visual Studio Code
`brew cask install visual-studio-code`

## Pyenv
Pyenv is a package manager for python. It allows you to install multiple versions of python on one machine. The pyenv-virtualenv plugin helps create virtualenvs for a specific python version. \
`brew install pyenv pyenv-virtualenv` \
Add following lines to .zshrc \
`eval "$(pyenv init -)"` \
`if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi`
 - List current python versions: \
   `pyenv versions` \
 - Install specific python version: \
   `pyenv install 3.12.5`
 -  Set installed version as global version: \
   `pyenv global 3.12.5`
 -  or, local version: \
   `pyenv local 3.12.5`

   
## Install Python packages
### numpy, scipy, matplotlib 
`python -m pip install <package_name>`

- Check if packages work with following snippet
```
import numpy as np
from scipy.interpolate import RectBivariateSpline
import matplotlib.pyplot as plt

n = 6
data = np.random.random([n,n])
func = RectBivariateSpline(np.linspace(0,1,n),np.linspace(0,1,n),data)
grid = np.meshgrid(np.linspace(0,1),np.linspace(0,1))
plt.imshow(func.ev(grid[0],grid[1]))
plt.show()
```
### slycot, control
needs xcode, and gfortran\
`brew install gfortran`
- Check if packages work with examples from
[Examples](https://python-control.readthedocs.io/en/latest/examples.html)


## Useful Resources
- [macOS Setup Guide](http://sourabhbajaj.com/mac-setup/SystemPreferences/)
- [Emacs – The Best Python Editor?](https://realpython.com/emacs-the-best-python-editor/)
- [Practical Emacs Tutorial](http://ergoemacs.org/emacs/emacs.html)
- [Short Git guide](http://rogerdudler.github.io/git-guide/)

