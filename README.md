# MBP setup
## Install recommended updates
`softwareupdate -ir --verbose`

## Install xcode (appstore)

## Install Homebrew and Cask
If xcode is not installed, this will automatically install xcode command line tools (c compiler etc.)\
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

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
### numpy, scipy, matplotlib \
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
### slycot
needs xcode, and gfortran\
`brew install gfortran`

- Add Homebrew Python link to path to `~\.profile` so Homebrew Python 3 is default (not Mac version 2.7) \
`export PATH=/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH` \
Check by running: `python --version` (should be 3.7.0, or higher) \

- Install Emacs\
`brew cask install emacs`
- Install packages for theme, Python editing, ...
copy [init.el](/init.el) to ~/.emacs.d/

- Install Visual Studio Code
`brew cask install visual-studio-code`

- Install git \
`brew install git`

- Customize Terminal/Bash \
Open Terminal > Preferences > General: New window with profile: Pro\
Open Terminal > Preferences > Profiles: Set Pro as default\
Copy [.bash_profile](/.bash_profile), [.bashrc](/.bashrc), [.bash_aliases](/.bash_aliases), [.profile](/.profile) to `~`

- Install LaTeX \
`brew cask install mactex`

- Visual Settings \
Change position to Left and make the size of icons Small \
Remove workspace auto-switching by running the following command: \
`defaults write com.apple.dock workspaces-auto-swoosh -bool NO` \
`killall Dock # Restart the Dock process`

- Mount remote file systems over ssh\
Install FUSE and SSHFS: `brew cask install osxfuse` and `brew install sshfs` \
Mount using ssh key: `sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa user@host:/remotefolder/ /localfolder`\
Unmount: `sudo umount -f /localfolder` \
If hanging, get pid: `pgrep -lf sshfs` and `kill -9 <pid>`


## Useful Resources
- [macOS Setup Guide](http://sourabhbajaj.com/mac-setup/SystemPreferences/)
- [Emacs – The Best Python Editor?](https://realpython.com/emacs-the-best-python-editor/)
- [Practical Emacs Tutorial](http://ergoemacs.org/emacs/emacs.html)
- [Short Git guide](http://rogerdudler.github.io/git-guide/)

