# ProgramsAndSettings
Settings for different programs.

**NB! Remember to backup ssh keys from old machine!**

## List of useful programs:
- Google chrome (download .deb package from webpage)
    + *maybe install dependency from apt*
- Curl (apt)
- Sublime Text 3 (https://www.sublimetext.com/docs/3/linux_repositories.html)
    + Package control (https://packagecontrol.io/installation)
    + See Sublime folder for nice-to-have packages
- Visual Studio Code (https://code.visualstudio.com/download)
    + Trailing spaces (package manager)
    + If nodejs installed
        - Node Exec
- i3wm
    + *add i3 repo to apt for newest version and then install i3 package from apt*
        - https://i3wm.org/docs/repositories.html
    + *add locale line to /usr/bin/dmenu_run if needed*
- zsh (apt)
    + zgen (https://github.com/tarjoilija/zgen)
    + set as default: chsh -s $(which zsh)
- playerctl
    + *download deb package from git repo:* https://github.com/acrisci/playerctl/releases
    + *Needed to control media playback using keys*
- light
    + help2man
        + *install from apt*
    + *clone repo:* https://github.com/haikarainen/light, *make, and make install*
    + *Needed to control screen brightness using keys*
- docker
- git (apt)
- git gui (apt)
- bpython (apt)
- pip (see website)
    + colr
- tensorflow
- imagemagick
    + import, bound in i3 config (remember to create Screenshots folder in ~/Pictures)
- hibernate (apt)
- spotify (https://www.spotify.com/au/download/linux/?tblang=french)
- redshift (apt)
    + redshift-gtk (apt)
    + *Start redshift-gtk and enable auto-start*
- node.js (https://nodejs.org/en/download/package-manager/)
    + npm
    - elm-lang
        + elm-format
    + yarn (https://yarnpkg.com/lang/en/docs/install/)
- sstp-client (https://launchpad.net/~eivnaes/+archive/ubuntu/network-manager-sstp)
    + Secure VPN protocol
    + Follow link, add repo, install sstp-client via apt