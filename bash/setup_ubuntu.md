```
sudo apt update
sudo apt autoremove
```

## Install Chrome

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
```

## Install build-essential

```
sudo apt install -y build-essential curl
```

## [Install keypass](https://keepassxc.org/download/#linux)

```
sudo snap install keepassxc
```

## [Install clone](https://rclone.org/install)

```
sudo -v ; curl https://rclone.org/install.sh | sudo bash
rclone config
rclone sync OneDrive: ./OneDrive --verbose  # copy to local 'onedrive'
rclone sync GoogleDrive: ./GoogleDrive --verbose  # copy to local 'drive'
```

## [Create ssh key](https://docs.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops)

```
ssh-keygen -t rsa -C "tanvir.ather@zuhid.com"
```

## Install git

```
sudo apt install -y git
git config --global user.name "Tanvir Ather"
git config --global user.email "tanvir.ather@zuhid.com"
```

## [Install vscode](https://code.visualstudio.com/Download)

```
sudo snap install code --classic
```

## [Install vscode nautilus extension](https://github.com/harry-cpp/code-nautilus)

```
wget -qO- https://raw.githubusercontent.com/harry-cpp/code-nautilus/master/install.sh | bash
```

## [Install Azure Data Studio](https://learn.microsoft.com/en-us/azure-data-studio/download-azure-data-studio?tabs=linux-install%2Cwin-user-install%2Cubuntu-install%2Cwindows-uninstall%2Credhat-uninstall)

```
cd ~
sudo dpkg -i ./Downloads/azuredatastudio-linux-<version string>.deb
```

## [Install nodejs, npm,](https://github.com/nodesource/distributions#debinstall)

```

sudo apt update
sudo apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
sudo apt-get install -y nodejs
node -v

sudo apt update
sudo apt install -y npm
npm -v
```

## Install angular

```
sudo npm install -g @angular/cli
ng version
```

## [Install dotnetcore](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu-2304)

```
sudo apt update
sudo apt install -y dotnet-sdk-8.0
```

## [Install docker](https://docs.docker.com/engine/install/ubuntu)

```
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

## [Install Azure Cli](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-apt)

```
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

## Install Office

```
sudo apt install -y libreoffice-writer libreoffice-calc
```

## [Install VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)

```
wget https://download.virtualbox.org/virtualbox/7.1.8/virtualbox-7.1_7.1.8-168469~Ubuntu~noble_amd64.deb
sudo apt install -y ./virtualbox-7.1_7.1.8-168469~Ubuntu~noble_amd64.deb
```

## Install OBS

```
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y obs-studio
```

## Install Java

```
apt-cache search --names-only 'jdk$'
sudo apt install openjdk-21-jdk
```

## [Install GO](https://golang.org/doc/install)

```
sudo apt update
sudo apt install -y golang
go version
```

## [Install Android Studio](https://www.geeksforgeeks.org/how-to-install-android-studio-on-ubuntu/#google_vignettel)

```
sudo snap install android-studio --classic
```

## [Install Fluter](https://docs.flutter.dev/get-started/install/linux/android)

```
export PATH="$PATH:$HOME/development/flutter/bin"
sudo apt install -y clang cmake ninja-build pkg-config libgtk-3-dev
```

## [Install Powershell](https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.4)

```
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

## [Install Azure Powershell](https://docs.microsoft.com/en-us/powershell/azure/install-az-ps)

## [InstallSql Server tools](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools?view=sql-server-ver15#ubuntu)

```
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt update
sudo apt install -y mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
```

## [Install SQL Server](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-linux-ver15)

## [install libjemalloc1](http://ftp.osuosl.org/pub/ubuntu/pool/universe/j/jemalloc/libjemalloc1_3.6.0-11_amd64.deb)

```
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/18.04/mssql-server-2019.list)"
sudo apt update
sudo apt install -y mssql-server
sudo /opt/mssql/bin/mssql-conf setup
P@ssw0rd
systemctl status mssql-server
```

## [PHP](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04)

```
sudo apt update
sudo apt install -y php-cgi php php-mysql
```

## [Istall MySQL](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04)

```
sudo apt install -y mysql-server
sudo mysql_secure_installation
```

## [Istall MySQL client]

```
sudo apt install mysql-client
```

## Install Apache

```
sudo apt install -y apache2 libapache2-mod-php
sudo a2enmod rewrite
sudo a2enmod ssl
```

## Remove

```
sudo apt autoremove
```
