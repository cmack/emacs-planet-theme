# Introduction

Planet is a theme for Emacs inspired by the color palette of the
former Gmail theme, "Planets." I don't know the artist to credit for
developing the original Planets palette, but I'll gladly do so when I
know their name.

This theme is being testing with Emacs 24 and `deftheme` --
`color-theme-package` not required.

# Installation

## Stand-alone installation

Currently the only way to get this theme is to `clone` or `fork`
[me on Github](https://github.com/cmack/emacs-planet-theme). [Marmalade](http://marmalade-repo.org/)
support is planned for the future when I feel this theme is more
well defined and feature-full. 

After downloading, place `planet-theme.el` in a folder in your Emacs'
`custom-theme` load path.  I have mine defined in `.emacs` as:

`(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")`

Once the file is loaded, it can be applied interactively with

`M-x load-theme RET planet` 

or by default in your `.emacs` file with

`(load-theme 'planet t)`.

# Bugs & Improvements

There should not be any bugs but rather 'ugly' colors. I am using this
theme everyday and I will be adding and adjusting accent colors as well
as support for other modes as I work with them. I do plan to keep the
ground colors the same.  

