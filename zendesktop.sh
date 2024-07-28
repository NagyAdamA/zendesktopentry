#!/bin/bash

# Enter desktop entry folder
cd $HOME/.local/share/applications

# Create dektop entry file
touch zen.desktop

# Start building desktop entry.
echo "[Desktop Entry]" > zen.desktop
echo "Type=Application" >> zen.desktop
echo "Name=Zen Browser" >> zen.desktop
echo "Comment=Zen Browser. Your browser, your way." >> zen.desktop
echo "Categories=Network;WebBrowser;" >> zen.desktop
echo "Type the route to the zen folder:"
read path
echo "Icon=$path/zen.png" >> zen.desktop
echo "Exec=$path/zen" >> zen.desktop
echo "Terminal=false" >> zen.desktop

# Add permission to launch

chmod +x $path/launch-script.sh
chmod +x ./zen.desktop
