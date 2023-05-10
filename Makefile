
packing:
	glib-compile-schemas --targetdir=schemas schemas
	gnome-extensions pack . \
	--force \
	--podir="po" \
	--extra-source="features" \
	--extra-source="LICENSE"

restart:
	busctl --user call org.gnome.Shell /org/gnome/Shell org.gnome.Shell Eval s 'Meta.restart("Restarting…", global.context)'

update-po:
	echo '' > messages.po
	find ./features -type f \( -name "*.ui" -or -name "*.js" \) | xgettext --from-code utf-8 -j messages.po -f -
	sed -i 's|"Content\-Type: text/plain; charset=CHARSET\\n"|"Content-Type: text/plain; charset=UTF-8\\n"|g' messages.po
	find ./po -type f -name "*.po" | xargs -i msgmerge {} messages.po -N --no-wrap -U
	mv messages.po $(find ./po -type f -name "*.pot")

install:
	gnome-extensions install --force ./*.shell-extension.zip

log:
	journalctl /usr/bin/gnome-shell -f -q --output cat | grep '\[EXTENSION GCOMP\] '

dev: packing 