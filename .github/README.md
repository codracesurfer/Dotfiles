# How to use Dotfiles repo

[Source](https://askubuntu.com/questions/1316229/is-it-bad-practice-to-git-init-in-the-home-directory-to-keep-track-of-dot-files)

Create a "bare" git repository:

```
cd $HOME
git init --bare .dotfiles
```

> The `--bare` flag creates a repository that doesn’t have a working directory, making it impossible to edit files and commit changes in that repository.

Create an alias to manage the repository we just created:
```
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

Change branch name to main
```
dotfiles branch -m main
```

Ignore the files that are not being tracked from being shown up in `git status`:
```
dotfiles config --local status.showUntrackedFiles no
```

Add remote github repo
```
dotfiles remote add origin git@github.com:codracesurfer/Dotfiles.git
```

Pull remote
```
dotfiles pull origin main
```

Add your desired files:
```
dotfiles add .bash_aliases
```

Commit.
```
dotfiles commit -m 'Add .bash_aliases'
```

---

Now with the use of a `bare` repository, there is no `.git` directory in your `$HOME` directory; so it does not introduce any surprises while working with `git`.


# Configurations
### `.tmux.conf` installs
```
mkdir -p ~/.tmux/yank 
git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/yank
```


### Dependencies
```
sudo apt install xclip tmux vim zsh
```

### `zsh` plugins
```
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
```

### Change default shell to `zsh`
```
chsh -s $(which zsh)
```

