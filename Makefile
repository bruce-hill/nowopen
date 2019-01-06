PREFIX=

all:
	@echo "Nothing to build."

install:
	@prefix="$(PREFIX)"; \
	if [[ ! $$prefix ]]; then \
		read -p $$'\033[1mWhere do you want to install? (default: /usr/local) \033[0m' prefix; \
	fi; \
	if [[ ! $$prefix ]]; then prefix="/usr/local"; fi; \
	echo $$'\033[1mInstalling...\033[0m'; \
	mkdir -pv $$prefix/bin $$prefix/share/man/man1 \
	&& cp -v nowopen $$prefix/bin/ \
	&& cp -v doc/nowopen.1 $$prefix/share/man/man1/; \
	xdg_data_home=$$XDG_DATA_HOME; \
	if [[ ! $$xdg_data_home ]]; then xdg_data_home="~/.local/share"; fi; \
	echo $$'\033[1mInstallation complete.\033[0m'; \
	echo "Put your business hours file in either $$xdg_data_home/nowopen/businesshours or ~/.businesshours";

uninstall:
	@prefix="$(PREFIX)"; \
	if [[ ! $$prefix ]]; then \
		read -p $$'\033[1mWhere do you want to uninstall from? (default: /usr/local) \033[0m' prefix; \
	fi; \
	if [[ ! $$prefix ]]; then prefix="/usr/local"; fi; \
	echo $$'\033[1mDeleting...\033[0m'; \
	rm -rvf $$prefix/bin/nowopen $$prefix/share/man/man1/doc/nowopen.1; \
	xdg_data_home=$$XDG_DATA_HOME; \
	if [[ ! $$xdg_data_home ]]; then xdg_data_home="~/.local/share"; fi; \
	echo $$'\033[1mUninstallation complete.\033[0m'; \
	echo "You may want to delete your data from $$xdg_data_home/nowopen/businesshours or ~/.businesshours";

