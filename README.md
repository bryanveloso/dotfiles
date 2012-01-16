# dotfiles

These are my `.files`. They help me keep my life sane when I switch between my
beloved iMac and MacBook Air.

## Installation

(This entire project piggybacks off of [oh-my-zsh][5], so you're going to want
to install that first.)

Want to give this a shot? Actually, that's rhetorical since I'm asking myself
that question. This is here so I don't forget since I'm prone to doing so.

    curl https://raw.github.com/bryanveloso/dotfiles/master/suit_up.sh | sh

Running this will overwrite your existing `.zshrc` file, so make sure to
**back it up** first! I claim no responsibility for any absent-mindedness
(except my own). You can also create the symlinks manually if you wish.

This process will also add an unsightly `bin` directory to your home
folder. If you don't want to see this in Finder:

    chflags hidden ~/bin

## Updating

Updating `.files` is as easy as running:

    upgrade_dotfiles

## Inspirations

Crazy ideas beget other crazy ideas, and for those I have these fine people to thank:

* [Kenneth Reitz][1] for making me aware of Z shell.
* [Geoffrey Grosenbach][2] [for elaborating][3] on how awesome zsh can look.
* [Robby Russell][4] for the amazing [oh-my-zsh][5] project.
* [Ben Hoskings][6] for an [prime example of dotfiles][7] to work off of.

[1]: https://github.com/kennethretiz
[2]: https://github.com/topfunky
[3]: http://blog.peepcode.com/blog/2012/my-command-line-prompt
[4]: https://github.com/robbyrussell
[5]: https://github.com/robbyrussell/oh-my-zsh
[6]: https://github.com/benhoskings
[7]: https://github.com/benhoskings/dot-files
