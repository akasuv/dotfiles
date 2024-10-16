# dotfiles
Dotfiles for my macOS setup powered by [rcm](https://thoughtbot.github.io/rcm/rcm.7.html).

## Install Homebrew

Website: [https://brew.sh](https://brew.sh)

```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Clone dotfiles to home root

```bash
  cd ~ && git clone ... && mv dotfiles .dotfiles
```

## Install packages and apps

```bash
  brew bundle --file=.dotfiles/homebrew/Brewfile
```

## Synchronize home directory using rcm

```bash
  rcup -v
```

## Add new rc files

```bash
  mkrc .zshrc ...
```

