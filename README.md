# dotfiles
Dotfiles for my macOS setup.

## Clone dotfiles to home root

```bash
  cd ~ && git clone ...
```

## Symlink Mackup config

```bash
  ln -s ./dotfiles/.mackup.cfg
```

## Install Mackup

```bash
brew install mackup
```

## Launch it and restore configurations

```bash
mackup restore
```

## Launch it and back up configurations
```bash
mackup backup
```

