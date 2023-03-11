# My Personal Neovim Configuration

## *The short and sweet*
My goals for this config were pretty straightforward:

- I want it to be easy on my eyes. 
- I want it to be...ahem, "blazingly fast!"
- I want it to be sensible and understandable.
- I want it to be simple.
- I want it to spark joy.

I think I've accomplished those things here! If you decide to try it, I'd love to know what you think and what changes and 
recommendations you have for me to improve it!

## *The long and tangential*
I've tried a few different Neovim configurations, the first of which was my own copy-pasted, overcomplicated mess of a config.
Then, I tried to set up and work with several prebuilt configurations. My favorite of all of the available prebuilt configs is
the Neovim from Scratch config created by chris@machine. I used this for a while, but still found myself struggling with making
changes and updates to the config without slowing it down or breaking it completely. Sometimes, out of frustration, I would either
go back to VS C*de or spend hours to days working on an Emacs config (which I'm still working on). Eventually, I would go back to
that particular config and read about Lua and watch the Neovim from Scratch series on Youtube, and I learned quite a lot. One day,
I decided to try and write my own config. This is the result of that effort.

## *The config*

### Plugin Manager

- Lazy.nvim
This config uses Lazy for plugin management. Lazy has great documentation, so you can move to it from any package manager.

### The Plugins

#### *Colorschemes*

- Catppuccin

This is probably my favorite theme, like, *ever*. I prefer the Mocha color, and I use color overrides to customize it.

- Moonfly

This theme is a bit faster for me in Neovim-QT (I'm on Windows for now), so I use it. 

#### *Statusline*

- Linefly

I am actually looking for something like express.nvim, but since the developer of the theme I'm using also created this,
I thought I'd give it a try. It's really good! It's fast and simple and useful. I really like it.

- Airline

You won't actually find this in the config, but it's a nice plugin to use when you've enable the Catppuccin theme.

#### *Greeter*

- Mini.starter

In Neovim-QT, the default splash screen doesn't show up on start. So, I grabbed a greeter to fill that space until I move back to Linux.

#### *Help and file navigation*

- Telescope

I love this plugin! It's extremely useful.

- Telescope File Browser

Another very useful plugin. Telescope has completely eliminated my need for a file tree viewer at this point (I mean, this provides
one, but I'm just saying I don't need *another* plugin just for viewing project structure).

- Harpoon

This is just freaking cool. Harpoon allows my brain to focus just on the files I need and access them with a set of keybindings that make
sense to me.

- Luaref

This is extremely useful for referencing Lua without leaving my editor

#### *Editing text*

- vim-surround

In every config I have used, I have added this pluign. It's extrememly uusefull1

- Undo Tree

I have been looking for something like this for a long time. I love this plugin!

- Which Key

This is something I got used to using while learning Doom Emacs. This Neovim plugin works just as well.

#### *Code specific plugins*

- Plenary

This one is required by a few plugins used in this config

- Treesitter

I think this is self-explanatory

- LSP Zero

This ended up being a really nice way to set up LSP and its related plugins.

- Mason

I love Mason!

- Web Tools

This is a very useful plugin for developing websites, like Live Server in VS C*de.

- Todo Highlight

I like the way the highlighting is done, here!

- Toggleterm

The chris@machine setup introduced me to this plugin and it is probably the one I use the most!

#### *Git-related*

- Git Signs

I like to be able to see what's new or changed, without it being messy or using icons or some other kind of visual clutter.
