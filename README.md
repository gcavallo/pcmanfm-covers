# PCManFM Covers

**Directory thumbnailer for PCManFM (gtk2/3 and qt).**

Compatible with `Folder.jpg` from *Windows Explorer* and
`.directory` FreeDesktop standard used by *Dolphin*.

## Install

You first need to patch *libfm* so it sends directories to
the thumbnailer. The patch is available [here](https://sourceforge.net/p/pcmanfm/bugs/1020/).

If you are using Arch Linux, a patched package is available at the [AUR](https://aur.archlinux.org/packages/libfm-directory_thumbnails/).

Once you have a patched *libfm*, get the latest *pcmanfm-covers* [release](https://github.com/gcavallo/pcmanfm-covers/releases),
and run `make install` as root from the terminal.

## Usage

#### Using the FreeDesktop standard
Create a new .directory text file with:

	[Desktop Entry]
	Icon=./.cover.jpg

Then rename your cover image to `.cover.jpg`. This is the recommended
stantard for FreeDesktop environments. it can be used on multiple image
formats (`jpg`, `png`, ...) and on hidden dotfiles.

#### Using the Microsoft Windows format
Simply name an `image/jpeg` file to `Folder.jpg` and the parent directory will
use this image for its icon. Only use this format is you share the directory with
Microsoft Windows computers.

## License

	PCManFM Covers
	Copyright (C) 2016  Gabriel Cavallo

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License along
	with this program; if not, write to the Free Software Foundation, Inc.,
	51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
