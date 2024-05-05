# anki.vim

A lightweight syntax-highlight plugin for writing Anki flashcards in plain-text files

- recognizes the file extension `.anki.txt`
- compatible with both Vim and NeoVim

## Syntax Notes

- assumes HTML usage for card formatting (e.g. `<b>bold text</b>`, `<br>` for line breaks)
- each line corresponds to one card
- comments are preceded by a hash (e.g. `# a comment here`)
- card reverses are marked by colons (e.g. `front of card?:back of card`)

## Installation

### using [vim-plug](https://github.com/junegunn/vim-plug)

```
Plug "crashmoney/anki.vim"
```

### using lazy.nvim

```
{
  "crashmoney/anki.vim"
}
```

## Development

The plugin is functional. I may add features in future as the need arises, but feel free to [open an issue](https://github.com/crashmoney/anki.vim/issue/new) 😄

