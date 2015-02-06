# Emacs Kicker

This repository contains a starter-kit for Emacs.  If you're new and want to
try the editor with a easy setup, that's for you.  [See]
(http://tapoueh.org/blog/2011/04/15-emacs-kicker.html) for a detailed
introduction.

## Install

Here's how to clone the project:
```
  REPO=~/dev/emacs.d
  mkdir -p $REPO
  git clone http://github.com/dimitri/emacs-kicker $REPO
```
If you just want to test it out:
```
  rm -rf /tmp/kicker && mkdir -p /tmp/kicker
  HOME=/tmp/kicker /path/to/emacs -q -l $REPO/init.el
```
To install:
```
  mkdir -p ~/.emacs.d
  ( cd ~/.emacs.d && ln -s $REPO/init.el . )
  /path/to/emacs
```
The idea is to keep the git repository out of the way in some place of your
own, then link it at the right place.

Please consult
[the Emacs manual regarding init files](http://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html) to insure that +$REPO/init.el+ will
actually be loaded. 

## What's in there?

Some selection of packages to have a nice +emacs+, some settings to disable
the menu bar and the tool bar, and also the scroll bar, etc.  The visual
improvements won't be such for everybody, don't hesitate reversing the
defaults here.

Of course if you do alter this file but still want to be able to git pull in
the future, you'd better branch :)

### el-get

The author of the +emacs-kicker+ is also the one of el-get, you won't be
surprised that we're leveraging it here.

### packages

A selection of packages have been selected for you, consider adapting it of
course.

### manual steps

Once the first startup is done, consider `M-x el-get-emacswiki-refresh` so
that you're able to easily install any package from `emacswiki`.

## How to go from that?

Just add the packages you want to try and need.  To do that, try `M-x
el-get-install` then `TAB`, and you will have a list

It's possible that in the future this very simple emacs setup will somewhat
grow into something a little more involved and use several files.

## Changing Preferences

If you want a different setup from the basic `emacs-kicker` here, the
simplest way is certainly to fork the project on github then use your own.

Happy Hacking!


## Latex Mode

#### AUCTeX
First things: you need to get AUCTeX
AUCTeX has a number of nice features:
 * automatic formatting of a section: `C-c C-q C-s`
 * section preview: `C-c C-p C-s` (it's amazing)

AUCTeX has may many more features, and you can always consult its [documentation](http://www.gnu.org/software/auctex/documentation.html) if you want to learn more.

#### Outline Mode
It allows the user to *hide* some parts of the text file, which makes working with large files much easier.
Features:
  * hide all the contents of your current sectiont: `C-c C-o C-l`
  * Move to next unit: `C-c C-o C-n`
  * Move to previous unit: `C-c C-o C-p`
  * See the whole document: `C-c C-o C-a`


## Haskell Mode

#### REPL
  * bring up REPL and start a session: `C-c C-l`

#### Structured editing
There's a fairly complete list of commands for structured editing [here](https://github.com/chrisdone/structured-haskell-mode/#features).


#### Pretty priniting
  * format a Haskell declaration: `C-c i`

#### Type checking
  * to type check and load the current module: `C-c C-l` or `F5`. Status will be shown in minibuffer.
  * to jump to the error line/column: <code>C-x \`</code>

#### Type information
  * to see type information (REPL's `:t`) select and hit: `C-c C-t`
  * to insert the type (e.g. type of function): `C-u C-c C-t`
  * to see type information (REPL's `:i`): `C-c C-i`

#### Go to definition
  * for jump to definition: `M-.`

#### Highlight users
  * to highlight all the occurences: `C-?`. `TAB` to go forward and `S-TAB` to go backward.
	`RET` to stop where you are and `C-g` to stop and go back to where you were originally.

#### Interactive REPL
  * clear REPL: `C-c C-k`
  * restart REPL: `M-x haskell-process-restart`

#### Cabal actions
  * build with cabal: `C-c C-c`
  * get a prompt of cabal commands: `C-c c`. from here you can run `cabal bench`, `cabal test`, `cabal haddock`, `cabal install`, etc.

#### Import completion
 If you type `import` and hit `SPC` you will get a module completion. Type `d.b.l` and hit `RET` and you should get `Data.ByteString.Lazy`.
  * to qualify import: `C-c C-q`
  * to sort and indent the imports: `C-c C-.`

## Python mode

#### ELPY
  Elpy is an extension for the Emacs text editor to work with Python projects. [Read more...](http://elpy.readthedocs.org/en/latest/introduction.html)
