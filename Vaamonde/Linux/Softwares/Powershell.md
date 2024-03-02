#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

Terminal: Ctrl + Alt + T

OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish

```
sudo cat /etc/os-release
sudo cat /etc/lsb-release
```

Menu
	Informações do Sistema

____________________

#01_ Atualização do Sistema Operacional Linux Mint

 - Atualização do sistema utilizando o MintUpdate;
 - Atualização do sistema utilizando o Apt;

Terminal: Ctrl + Alt + T

```
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean
```

____________________

#02_ Instalando as Dependências do PowerShell e do .NET SDK e Runtime no Linux Mint

#INSTALANDO AS DEPENDÊNCIAS DO POWERSHELL NO LINUX MINT 20.x

```
sudo apt install apt-transport-https software-properties-common libc6 libgcc1 \
libgssapi-krb5-2 libicu66 libssl1.1 libstdc++6 zlib1g vim git python2 python3
```

#INSTALANDO AS DEPENDÊNCIAS DO POWERSHELL NO LINUX MINT 21.x

```
sudo apt install apt-transport-https software-properties-common libc6 libgcc-s1 \
libgssapi-krb5-2 libicu70 libssl3 libstdc++6 zlib1g vim git python2 python3
```

____________________

#03_ Baixando o repositório oficial do PowerShell, .NET SDK e Runtime no Linux Mint

#ADICIONANDO O REPOSITÓRIO DO POWERSHELL NO LINUX MINT 20.x
#opção do comando wget: -q (quiet)

```
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
```

#ADICIONANDO O REPOSITÓRIO DO POWERSHELL NO LINUX MINT 21.x
#opção do comando wget: -q (quiet)

```
wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
```

____________________

#04_ Instalando o repositório oficial do PowerShell, .NET SDK e Runtime no Linux Mint

#opção do comando dpkg: -i (install packet)

```
sudo dpkg -i packages-microsoft-prod.deb
```

____________________

#05_ Atualizando as Lista do Apt com os novos repositórios do Powershell no Linux Mint

```
sudo apt update
```

____________________

#06_ Instalando o PowerShell, .NET SDK e Runtime no Linux Mint

```
sudo apt install powershell dotnet-sdk-8.0 aspnetcore-runtime-8.0
```

____________________

#07_ Rodando o PowerShell no Linux Mint

```
pwsh
```
____________________

#08_ Utilizando os comandos Básicos do PowerShell no Linux Mint

 - Get-Date        - informações de data e hora do linux
 - Get-Host        - informações detalhadas do PowerShell
 - Get-Location    - informações da localização (Path)
 - Get-PSDrive     - informações do Hard Disk
 - Get-Process     - informações de processos
 - Get-Uptime      - informações do tempo de uso do linux
 - Get-Command     - lista todos os comandos que estão disponíveis
 - Get-Module      - lista todos os módulos que estão disponíveis
 - Get-History     - imprimir todo o histórico de comandos do PowerShell
 - dir ou ls       - lista o conteúdo do diretório
 - exit            - sair do PowerShell
