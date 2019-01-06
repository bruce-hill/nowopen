PREFIX=

all:
	@echo "Nothing to build."

install:
	@prefix="$(PREFIX)"; \
	if [[ ! $$prefix ]]; then \
		read -p $$'\033[1mWhere do you want to install? (default: /usr/local) \033[0m' prefix; \
	fi; \
	if [[ ! $$prefix ]]; then prefix="/usr/local"; fi; \
	mkdir -pv $$prefix/bin $$prefix/share/man/man1 \
	&& cp -v nowopen $$prefix/bin/ \
	&& cp -v doc/nowopen.1 $$prefix/share/man/man1/;

uninstall:
	@prefix="$(PREFIX)"; \
	if [[ ! $$prefix ]]; then \
		read -p $$'\033[1mWhere do you want to uninstall from? (default: /usr/local) \033[0m' prefix; \
	fi; \
	if [[ ! $$prefix ]]; then prefix="/usr/local"; fi; \
	echo "Deleting..."; \
	xdg_data_home=$$XDG_DATA_HOME; \
	if [[ ! $$xdg_data_home ]]; then $$xdg_data_home = "~/.local/share"; fi; \
	for f in $$xdg_data_home/nowopen ~/.businesshours; do \
		if [[ -f $$f || -d $$f ]]; then \
			read -p "Do you want to delete $$f? (Y/n) " confirm; \
			if [[ confirm -ne "n" ]]; then rm -rvf $$f; fi; \
		fi; \
	done; \
	rm -rvf $$prefix/bin/nowopen $$prefix/share/man/man1/doc/nowopen.1;

