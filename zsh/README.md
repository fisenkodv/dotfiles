# ZSH

## Prerequisite

- [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

## Usage

```bash
sh ./install.sh --profile work
```

### Aliases

| alias         | description |
| :------------ | :---------- |
| `..`          |             |
| `...`         |             |
| `....`        |             |
| `.....`       |             |
| `~=`          |             |
| `--`          |             |
| `dl`          |             |
| `dt`          |             |
| `p`           |             |
| `g`           |             |
| `gc`          |             |
| `gp`          |             |
| `h`           |             |
| `l`           |             |
| `ll`          |             |
| `la`          |             |
| `lsd`         |             |
| `ls`          |             |
| `sudo`        |             |
| `gurl`        |             |
| `week`        |             |
| `timer`       |             |
| `update`      |             |
| `ip`          |             |
| `ips`         |             |
| `whois`       |             |
| `flush`       |             |
| `lscleanup`   |             |
| `sniff`       |             |
| `httpdump`    |             |
| `hd`          |             |
| `md5sum`      |             |
| `sha1sum`     |             |
| `c`           |             |
| `cleanup`     |             |
| `rot13`       |             |
| `emptytrash`  |             |
| `show`        |             |
| `hide`        |             |
| `hidedesktop` |             |
| `showdesktop` |             |
| `urlencode`   |             |
| `mergepdf`    |             |
| `gm`          |             |
| `spotoff`     |             |
| `spoton`      |             |
| `badge`       |             |
| `map`         |             |
| `chromekill`  |             |
| `poweroff`    |             |

### Functions

| name      | description                                                                                                                                                                                                                                                        |
| :-------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| listening | Print open ports                                                                                                                                                                                                                                                   |
| mkd       | Create a new directory and enter it                                                                                                                                                                                                                                |
| fs        | Determine size of a file or total size of a directory                                                                                                                                                                                                              |
| dataurl   | Create a data URL from a file                                                                                                                                                                                                                                      |
| dataurlc  | Create a data URL from a file and copy it to the clipboard                                                                                                                                                                                                         |
| server    | Start an HTTP server from a directory, optionally specifying the port                                                                                                                                                                                              |
| hr        | Print line                                                                                                                                                                                                                                                         |
| tre       | `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring the `.git` directory, listing directories first. The output gets piped into `less` with options to preserve color and line numbers, unless the output is small enough for one screen |
| clone     | Git clone                                                                                                                                                                                                                                                          |
| gt        | Git graph log                                                                                                                                                                                                                                                      |

## Note

`.zsh_prompt` for `home` and `work` defines `ZSH` export:

- https://github.com/fisenkodv/dotfiles/blob/c5f764db84ce92eaf81d749d916134f0ea29a848/zsh/home/.zsh_prompt#L5
- https://github.com/fisenkodv/dotfiles/blob/c5f764db84ce92eaf81d749d916134f0ea29a848/zsh/work/.zsh_prompt#L5

that line needs to be updated accordingly if need.
