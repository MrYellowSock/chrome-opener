cp ./chrome_opener.desktop ~/.local/share/applications/
chmod +x chrome_opener.sh
# make sure local bin is in path
cp chrome_opener.sh ~/.local/bin/
xdg-mime default chrome_opener.desktop x-scheme-handler/chromeopen;
