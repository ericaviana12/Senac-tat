#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

Terminal: Ctrl + Alt + T

OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish

```
sudo cat /etc/os-release
sudo cat /etc/lsb-release
sudo localectl
```

Menu
	Informações do Sistema

____________________

#01_ Atualização do Sistema Operacional Linux Mint

_ Atualização do sistema utilizando o MintUpdate;
_ Atualização do sistema utilizando o Apt;

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

#02_ Plugar o Arduino na porta USB no Linux Mint

OBERVAÇÃO: verificar se os LED's de indicação do Arduino começa a piscar

____________________

#03_ Clonar o Projeto do Github

```
git clone https://github.com/vaamonde/arduino
```

____________________

#04_ Acessando o diretório clocando do Arduino

```
cd arduino/
```

____________________

#05_ Executando o script de Instalação do Arduino IDE 2.x no Linux Mint

#INSTALAÇÃO DO ARDUINO IDE NO LINUX MINT 20.x

```
bash install20.sh
```

#INSTALAÇÃO DO ARDUINO IDE NO LINUX MINT 21.x

```
bash install21.sh
```

____________________

#06_ Executando o Arduino IDE 2.x no Linux Mint

arduino-20

____________________

#07_ Verificando as Informações do Hardware do Arduino no Linux Mint

Arduino IDE 2.2.x
	Tools
		Board "Arduino Uno"
		Port: "/dev/ttyACM0"
		Get Board Info

____________________

#08_ Executando um projeto básico do Arduino IDE no Linux Mint

File
	Examples
		01. Basics
			Blink
				Upload

____________________

#09_ Verificando as Informações do Hardware do Arduino utilizando o Arduino-Cli

Terminal (Ctrl + Alt + T)

```
arduino-cli
arduino-cli version
arduino-cli board list
```
