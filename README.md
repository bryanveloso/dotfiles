# dotfiles

These are my `.files`. They help me keep my life sane when I switch between my M1 Mac Mini and M1 MacBook Pro.

## Installation

Running this will overwrite your existing `.zshrc` file, so make sure to
**back it up** first! I claim no responsibility for any absent-mindedness
(except my own). You can also create the symlinks manually if you wish.

This process will also add an unsightly `bin` directory to your home
folder. If you don't want to see this in Finder:

    chflags hidden ~/bin

## Special Stuff

As of `git` 1.7.10, you can include files in your .gitconfig. I have moved
all of my sensitive configurations (include name and email, as to not clobber
your system) into the below `.gitconfig.private` file.

    [include]
        path = /Users/Bryan/.gitconfig.private
