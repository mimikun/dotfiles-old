.PHONY : install
install : install.sh
	bash install.sh

.PHONY : release
release :
	tar cvf mimikun-dotfiles.tar.gz \
		--exclude ".git" \
		.
