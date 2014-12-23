= Emacs Kicker

This repository contains a starter-kit for Emacs.  If you're new and want to
try the editor with a easy setup, that's for you.  See
http://tapoueh.org/blog/2011/04/15-emacs-kicker.html for a detailed
introduction.

== Install

Here's how to clone the project:

  REPO=~/dev/emacs.d
  mkdir -p $REPO
  git clone http://github.com/dimitri/emacs-kicker $REPO

If you just want to test it out:

  rm -rf /tmp/kicker && mkdir -p /tmp/kicker
  HOME=/tmp/kicker /path/to/emacs -q -l $REPO/init.el

To install:

  mkdir -p ~/.emacs.d
  ( cd ~/.emacs.d && ln -s $REPO/init.el . )
  /path/to/emacs

The idea is to keep the git repository out of the way in some place of your
own, then link it at the right place.

Please consult
http://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html[the
Emacs manual regarding init files] to insure that +$REPO/init.el+ will
actually be loaded. 

== What's in there?

Some selection of packages to have a nice +emacs+, some settings to disable
the menu bar and the tool bar, and also the scroll bar, etc.  The visual
improvements won't be such for everybody, don't hesitate reversing the
defaults here.

Of course if you do alter this file but still want to be able to git pull in
the future, you'd better branch :)

=== el-get

The author of the +emacs-kicker+ is also the one of el-get, you won't be
surprised that we're leveraging it here.

=== packages

A selection of packages have been selected for you, consider adapting it of
course.

=== manual steps

Once the first startup is done, consider +M-x el-get-emacswiki-refresh+ so
that you're able to easily install any package from +emacswiki+.

== How to go from that?

Just add the packages you want to try and need.  To do that, try +M-x
el-get-install+ then +TAB+, and you will have a list

It's possible that in the future this very simple emacs setup will somewhat
grow into something a little more involved and use several files.

== Changing Preferences

If you want a different setup from the basic +emacs-kicker+ here, the
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
