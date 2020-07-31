# standard issue

_Ready-Up Boot!_

A repository of config files, dotfiles, themes, scripts, etc.

---

## settings, profiles, gitignore

- [vscode-settings](https://code.visualstudio.com/docs/getstarted/settings)
- [.gitignore](reference-guides/.gitignore)
- [.bash_profile](reference-guides/.bash_profile)
- [.zshrc](reference-guides/.zshrc)*
- [.vimrc](.vimrc)
---

## reference-guides

- [git-reference](reference-guides/git-reference.md)
- [rst-reference](reference-guides/rst-reference.md)
- [npm-package-dev-reference](reference-guides/npm-package-development-reference.md)
- [virtual-env-reference](reference-guides/virtual-env-reference.md)

---

## scripts

- [pull.sh](scripts/pull.sh)

---

## Notes*

**`.zshrc`:**
- When used with `iTerm2`, make sure you enable `use built-in Powerline glyphs` located here: `Preferences>Profiles>Text>Text Rendering`

**`homebrew + OS Catalina`:**
- `$ brew prune` is now obsolete
- `$ brew style` helps to resolve some error messages that will begin to appear as soon as `$ brew doctor` has completed running.
- If your env is totally FUBAR'd, try `$ brew update-reset` to fix it.

