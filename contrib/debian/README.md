
Debian
====================
This directory contains files used to package gozerd/gozer-qt
for Debian-based Linux systems. If you compile gozerd/gozer-qt yourself, there are some useful files here.

## gozer: URI support ##


gozer-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install gozer-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your gozer-qt binary to `/usr/bin`
and the `../../share/pixmaps/gozer128.png` to `/usr/share/pixmaps`

gozer-qt.protocol (KDE)

