# standard issue

_Ready-Up Boot!_

A repository of machine onboarding scripts, config files, dotfiles, themes, etc.

---

## provisioning & onboarding a new intel-based mac

_**NOTE:** WIP testing OSX 13.0.1 - adding more automation via Makefile._

1. Update OSX default shell: `chsh -s /bin/zsh`
1. Install XCode CLI Toolkit: `xcode-select --install`
1. Install oh-my-zsh: `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
1. Install Homebrew: `sh /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
1. Install Brewfile packages: `make brew_bundle`

---

## settings, profiles, gitignore

- [.gitignore](reference-guides/.gitignore)
- [.vimrc](.vimrc)
- [vscode-settings](https://code.visualstudio.com/docs/getstarted/settings)

---

## reference-guides

- [git-reference](reference-guides/git-reference.md)
- [npm-package-dev-reference](reference-guides/npm-package-development-reference.md)
- [rst-reference](reference-guides/rst-reference.md)
- [virtual-env-reference](reference-guides/virtual-env-reference.md)
