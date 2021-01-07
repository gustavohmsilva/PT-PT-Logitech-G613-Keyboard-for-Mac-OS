#!/bin/bash
echo "This is the Installer for gustavohmsilva's PT-PT Logitech G613 Keyboard Layout for Mac OS"
echo "Do you want to install the layout for the (c)urrent user, for (a)ll users, or just want to (q)uit?"
read installOption
if "$installOption" == "c"
then
        echo "Starting installation for current user..."
        echo "Deleting previous versions"
        rm -rf ~/Library/Keyboard\ Layouts/PT-PT\ \(gustavohmsilva\).*
        echo "Installing version in the install script folder"
        cp PT-PT\ \(gustavohmsilva\).* ~/Library/Keyboard\ Layouts/
elif "$installOption" == "a"
then
        echo "Starting installation for all users! A Super User password may be requested..."
        echo "Deleting previous versions"
        sudo rm -rf /Library/Keyboard\ Layouts/PT-PT\ \(gustavohmsilva\).*
        echo "Installing version in the install script folder"
        sudo cp PT-PT\ \(gustavohmsilva\).* /Library/Keyboard\ Layouts
elif "$installOption" == "q"
then
        echo "Installation cancelled, no change has been made"
else
        echo "Invalid option, script has been aborted!"
fi
echo "Done! You may now configure your keyboard layout!"
