#!/bin/zsh

setopt EXTENDED_GLOB

test -e $HOME/.preprezto¬ || mkdir $HOME/.preprezto

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	test -f "${ZDOTDIR:-$HOME}/.${rcfile:t}" && mv "${ZDOTDIR:-$HOME}/.${rcfile:t}" "$HOME/.preprezto¬"
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

rmdir $HOME/.preprezto 2> /dev/null

test -f $HOME/.history && test ! -f $HOME/.zhistory && mv $HOME/.history $HOME/.zhistory