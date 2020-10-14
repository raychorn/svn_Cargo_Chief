svn update /usr/local/django/cargochief --username read_only --password peekab00

FILES=/usr/local/django/cargochief/*.sh
chmod +x $FILES
for f in $FILES
do
  dos2unix $f
done
