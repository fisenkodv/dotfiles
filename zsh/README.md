# ZSH

## Prerequisite

- [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

## Usage

```bash
sh ./install.sh --profile work
```

### Aliases

| alias         | description                                                                                                           |
| :------------ | :-------------------------------------------------------------------------------------------------------------------- |
| `..`          | Easier navigation                                                                                                     |
| `...`         | Easier navigation                                                                                                     |
| `....`        | Easier navigation                                                                                                     |
| `.....`       | Easier navigation                                                                                                     |
| `~`          | Easier navigation                                                                                                     |
| `-`           | Easier navigation                                                                                                     |
| `dl`          | Shortcut: Download                                                                                                    |
| `dt`          | Shortcut: Desktop                                                                                                     |
| `p`           | Shortcut: Projects                                                                                                    |
| `g`           | Shortcut: `git`                                                                                                     |
| `gc`          | Shortcut: `git commit`                                                                                                  |
| `gp`          | Shortcut: `git push`                                                                                                    |
| `h`           | Shortcut: `history`                                                                                                     |
| `l`           | List all files colorized in long format                                                                               |
| `ll`          | List all files colorized in long format                                                                               |
| `la`          | List all files colorized in long format, including dot files                                                          |
| `lsd`         | List only directories                                                                                                 |
| `ls`          | Always use color output for `ls`                                                                                      |
| `sudo`        | Enable aliases to be sudo’ed                                                                                          |
| `gurl`        | Gzip-enabled `curl`                                                                                                   |
| `week`        | Get week number                                                                                                       |
| `timer`       | Stopwatch                                                                                                             |
| `update`      | Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages                |
| `ip`          | IP addresses                                                                                                          |
| `ips`         | IP addresses                                                                                                          |
| `whois`       | Enhanced WHOIS lookups                                                                                                |
| `flush`       | Flush Directory Service cache                                                                                         |
| `lscleanup`   | Clean up LaunchServices to remove duplicates in the “Open With” menu                                                  |
| `sniff`       | View HTTP traffic                                                                                                     |
| `httpdump`    |                                                                                                                       |
| `hd`          | Canonical hex dump; some systems have this symlinked                                                                  |
| `md5sum`      | OS X has no `md5sum`, so use `md5` as a fallback                                                                      |
| `sha1sum`     | OS X has no `sha1sum`, so use `shasum` as a fallback                                                                  |
| `c`           | Trim new lines and copy to clipboard                                                                                  |
| `cleanup`     | Recursively delete `.DS_Store` files                                                                                  |
| `rot13`       | ROT13-encode text. Works for decoding, too!                                                                           |
| `emptytrash`  | Empty the Trash on all mounted volumes and the main HDD                                                               |
| `show`        | Show hidden files in Finder                                                                                           |
| `hide`        | Hide hidden files in Finder                                                                                           |
| `hidedesktop` | Hide all desktop icons (useful when presenting)                                                                       |
| `showdesktop` | Show all desktop icons (useful when presenting)                                                                       |
| `urlencode`   | URL-encode strings                                                                                                    |
| `mergepdf`    | Merge PDF files, `mergepdf -o output.pdf input{1,2,3}.pdf`                                                            |
| `gm`          | Merge conflict                                                                                                        |
| `spotoff`     | Disable Spotlight                                                                                                     |
| `spoton`      | Enable Spotlight                                                                                                      |
| `badge`       | Ring the terminal bell, and put a badge on Terminal.app’s Dock icon                                                   |
| `map`         | Intuitive map function. For example, to list all directories that contain a certain file: find . -name .gitattributes | map dirname |
| `chromekill`  | Kill all the tabs in Chrome to free up memory                                                                         |
| `poweroff`    | Power off                                                                                                             |

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
| weather   | Get weather info, e.g. `weather nyc`                                                                                                                                                                                                                               |

## Note

`.zsh_prompt` for `home` and `work` defines `ZSH` export:

- https://github.com/fisenkodv/dotfiles/blob/c5f764db84ce92eaf81d749d916134f0ea29a848/zsh/home/.zsh_prompt#L5
- https://github.com/fisenkodv/dotfiles/blob/c5f764db84ce92eaf81d749d916134f0ea29a848/zsh/work/.zsh_prompt#L5

that line needs to be updated accordingly if need.
