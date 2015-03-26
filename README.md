# Planet Theme for Emacs 24 #

## Introduction ##

Planet is a theme for Emacs inspired by the color palette of the
former Gmail theme, "Planets." I don't know the artist to credit for
developing the original Planets palette, but I'll gladly do so when I
know their name.

This theme is being testing with Emacs 24 and `deftheme` --
`color-theme-package` not required.

## Installation ##

### MELPA ###

    M-x package-install RET planet-theme

### Stand-alone installation ###

Download from [on Github](https://github.com/cmack/emacs-planet-theme).

After downloading, place `planet-theme.el` in a folder in your Emacs'
`custom-theme` load path.  I have mine defined in `.emacs` as:

    (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

### Apply Theme

After installation, it can be applied interactively with

    M-x load-theme RET planet

or by default in your `.emacs` file with

    (load-theme 'planet t)

## Screenshots ##

![](https://raw.github.com/cmack/emacs-planet-theme/master/screenshot1.png)
![](https://raw.github.com/cmack/emacs-planet-theme/master/screenshot2.png)


## Bugs & Improvements ##

There should not be any bugs but rather only colors that "don't fit". I am
using this theme everyday and I will be adding and adjusting accent colors as
well as support for other modes as I work with them. I plan to keep the basic
ground colors the same.
