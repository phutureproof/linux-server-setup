# linux-server-setup
Bash scripts to install php-fpm, nginx and mariadb on Windows Subsystem for linux.

## Windows Subsystem for linux
To install the Windows Subsystem for linux

* Press Windows key and type `windows features`.
* Select `Turn Windows features on or off` and press `enter`.
* Enable the `Windows Subsystem for linux` and click `OK`.
* Restart Windows if required.
* Press Windows key and type `cmd`, press `enter`.
* Type `lxrun /install` and follow onscreen instructions.

## Using Bash in PHPStorm
* Open PHPStorm.
* Press `CTRL` + `ALT` + `S`.
* Navigate to Tools > Terminal
* Set the `Shell path` to `C:\Windows\System32\bash.exe` and press `OK`.
* Press `ALT` + `F12` to open your new Bash terminal.

## Using the Installer Script
* Open the PHPStorm terminal with `ALT` + `F12`
* Become superuser by typing `sudo su` and pressing `enter`, enter your password if prompted.
* Type `./install` and press `enter` then follow onscreen instructions.

## Using the Removal Script
* Open the PHPStorm terminal with `ALT` + `F12`
* Become superuser by typing `sudo su` and pressing `enter`, enter your password if prompted.
* Type `./remove` and press `enter` then follow onscreen instructions.
