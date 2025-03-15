#

1. Remove Fedora repo

flatpack packages to install

1. Bitwarden
2. Discord
3. FLatseal
4. OBS Studio
5. Audicity?
6. Podman Desktop?

Setting zsh config directory
Pam env file problems on fedora

https://thevaluable.dev/zsh-install-configure-mouseless/

You can't change Zsh file location without editing the root file
homectl update username --setenv=EDITOR

homectl doesn't work either as it doesn't respect the config files either

Setting ENV Files is hell on Linux

https://bugzilla.mozilla.org/show_bug.cgi?id=259356

20 year old bug for config change

https://poignardazur.github.io/2023/05/23/platform-compliance-in-cargo/

More bikeshedding about config file locations

xdg-ninja

https://github.com/flatpak/flatpak/issues/3997

sudo chsh -s /bin/zsh lacusch

worked form 21:00-01:30 during the night looking up and fixing config files
