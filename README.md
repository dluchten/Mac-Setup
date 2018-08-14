# Mac-Setup

- Install recommended updates \
`softwareupdate -ir --verbose`

- Install Xcode \
Download and install it from the App Store or from [Apple's website](https://developer.apple.com/xcode/).
- Install Xcode command line tools \
`xcode-select --install`

- Install Homebrew \
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

- Install Python 3, gcc compiler (includes `gfortran` needed for compiling SciPy modules), etc. \
`brew install python3 gcc` \
`pip3 install numpy scipy matplotlib ipython`

- Check if Python and packages were succesfully installed with following snippet (from [this website](https://symbols.hotell.kau.se/2017/11/11/get_started_with_python/))
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
- Add Homebrew Python link to path to `~\.profile` so Homebrew Python 3 is default (not Mac version 2.7) \
`export PATH=/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH` \
Check by running: `python --version` (should be 3.7.0, or higher) \

- Install Emacs\
brew cask install emacs
- Install packages for theme, Python editing, ...
copy [init.el](/init.el) to ~/.emacs.d/

- Install git \
`brew install git`

- Install LaTeX \
Download and install it from [MacTeX](http://www.tug.org/mactex/)

## Useful Resources
- [macOS Setup Guide](http://sourabhbajaj.com/mac-setup/SystemPreferences/)
- [Emacs – The Best Python Editor?](https://realpython.com/emacs-the-best-python-editor/)
- [Practical Emacs Tutorial](http://ergoemacs.org/emacs/emacs.html)
- [Short Git guide](http://rogerdudler.github.io/git-guide/)

