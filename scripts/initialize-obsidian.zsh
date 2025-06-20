#!/bin/zsh

if [[ ! -d ~/obsidianNotes ]]; then
    mkdir ~/obsidianNotes
fi

if [[ ! -d ~/obsidianNotes/obsidian-bible ]]; then
    git clone https://github.com/thazlett16/obsidian-bible.git ~/obsidianNotes/obsidian-bible
fi

if [[ ! -d ~/obsidianNotes/obsidian-coding ]]; then
    git clone https://github.com/thazlett16/obsidian-coding.git ~/obsidianNotes/obsidian-coding
fi

if [[ ! -d ~/obsidianNotes/obsidian-work ]]; then
    git clone https://github.com/thazlett16/obsidian-work.git ~/obsidianNotes/obsidian-work
fi
