## Initial Setup
```sh
sudo apt update
sudo apt autoremove
```

## Install Chrome
```sh
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
```

## Install build-essential
```sh
sudo apt install -y build-essential curl
```

## [Install keypass](https://keepassxc.org/download/#linux)
```sh
sudo snap install keepassxc
```

## [Install clone](https://rclone.org/install)
```sh
sudo -v ; curl https://rclone.org/install.sh | sudo bash
rclone config
rclone sync GoogleDrive: ./GoogleDrive --verbose  # copy to local 'drive'
```

## [Create ssh key](https://docs.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops)
```sh
ssh-keygen -t rsa -C "tanvir.ather@zuhid.com"
```

## Install git
```sh
sudo apt install -y git
git config --global user.name "Tanvir Ather"
git config --global user.email "tanvir.ather@zuhid.com"
```

## [Install vscode](https://code.visualstudio.com/Download)
```sh
sudo snap install code --classic
```

## [Install vscode nautilus extension](https://github.com/harry-cpp/code-nautilus)
```sh
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash
```
## [Install docker](https://docs.docker.com/engine/install/ubuntu)
```sh
# Add Docker's official GPG key:
sudo apt update
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# To install the latest version, run:
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Post install setup
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

## [Install dotnetcore](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu-2304)
```sh
sudo add-apt-repository ppa:dotnet/backports
sudo apt update
sudo apt install -y dotnet-sdk-9.0
```

## [Install nodejs, npm,](https://github.com/nodesource/distributions#debinstall)
```sh
sudo apt update
sudo apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo apt-get install -y nodejs
node -v

sudo apt update
sudo apt install -y npm
npm -v
```

## Install angular
```sh
sudo npm install -g @angular/cli
ng version
```

## Install Office
```sh
sudo apt install -y libreoffice-writer libreoffice-calc
```

## [Install VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)
```sh
wget https://download.virtualbox.org/virtualbox/7.1.8/virtualbox-7.1_7.1.8-168469~Ubuntu~noble_amd64.deb
sudo apt install -y ./virtualbox-7.1_7.1.8-168469~Ubuntu~noble_amd64.deb
```

## Install OBS
```sh
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y obs-studio
```

## Install Java
```sh
apt-cache search --names-only 'jdk$'
sudo apt install openjdk-21-jdk
```

## [Install GO](https://golang.org/doc/install)
```sh
sudo apt update
sudo apt install -y golang
go version
```

## [Install Android Studio](https://www.geeksforgeeks.org/how-to-install-android-studio-on-ubuntu/#google_vignettel)
```sh
sudo snap install android-studio --classic
```

## [Install Fluter](https://docs.flutter.dev/get-started/install/linux/android)
```sh
export PATH="$PATH:$HOME/development/flutter/bin"
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev
```

## [Install Powershell](https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.4)
```sh
sudo apt-get update
sudo apt-get install -y wget apt-transport-https software-properties-common
wget -q https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell
Install-Module -Name SqlServer
pwsh
```

## [PHP](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04)
```sh
sudo apt update
sudo apt install -y php-cgi php php-mysql
```

## [Istall MySQL client]
```sh
sudo apt install mysql-client
```

## Install Apache
```sh
sudo apt install -y apache2 libapache2-mod-php
sudo a2enmod rewrite
sudo a2enmod ssl
```

## Finish Setup
```sh
sudo apt update
sudo apt autoremove
```
