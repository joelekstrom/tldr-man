# tldr-man
A Makefile that creates manpages from all the [tldr-pages](https://github.com/tldr-pages/tldr).

## Usage
1. Install [ronn](https://github.com/rtomayko/ronn) if you don't have it: `gem install ronn`

2. Put `Makefile` in the folder where want to store the generated manpages.

3. Run `make` in said folder.

3. Make an alias for `man`: `alias tldr="man -M ~/my_folder"`

Done! You can now type `tldr` to show a tldr-page instead of a manpage. Example: `tldr man`

## Why?
The problem with `man` isn't `man`. Some manuals could be shorter, and `tldr`
is a good substitute. But `man` can still be used to read the tldr-pages!
I didn't want an extra program just to read tldr-pages, so I made this instead.
