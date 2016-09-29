# PCManFM Covers
# https://github.com/gcavallo/pcmanfm-covers

# Copyright (c) 2016, Gabriel Cavallo
# GPLv2 License https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt

NAME = "directory.thumbnailer"

install:
	cp $(NAME) /usr/share/thumbnailers
	cp $(NAME).sh /usr/local/bin

uninstall:
	rm /usr/share/thumbnailers/$(NAME)
	rm /usr/local/bin/$(NAME).sh
