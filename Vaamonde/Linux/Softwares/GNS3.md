#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

#verificando as versões e codinome do sistema operacional
#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish

```
sudo cat /etc/os-release
sudo cat /etc/lsb-release
```

#verificando informações de hardware e processador
#opções do comando inxi: -C (cpu), -M (machine), -S (system), -f (flags), -xxx (extra 3)

```
sudo inxi -CMSfxxx
sudo lscpu
```

#modo gráfico para verificar as informações de sistema operacional e hardware
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
sudo apt clean
```

____________________

#02_ Adicionando o Suporte da Arquitetura i386 no Linux Mint

#adicionando a arquitetura i386 (32 Bits)
#opção do comando dpkg: ---add-architecture (Add architecture to the list of architectures)

```
sudo dpkg --add-architecture i386
```

____________________

#03_ Adicionando o PPA do Projeto do GNS3 no Linux Mint

#adicionando o repositório pessoal do GNS3 (PPA = Personal Package Archives)

```
sudo add-apt-repository ppa:gns3/ppa
```

____________________

#04_ Atualizando as Listas do Apt com o novo PPA do GNS3 no Linux Mint

#atualizando as listas do Apt com o novo repositório

```
sudo apt update
```

____________________

#05_ Instalando o GNS3 e suas Dependências no Linux Mint

#instalação das dependências básicas e o GNS3
#opção da contra barra (\): criar uma quebra de linha no terminal

```
sudo apt install gns3-gui gns3-iou gns3-server gns3-webclient-pack dynamips vpcs xterm ubridge nmap \
iptraf-ng iperf3 ipcalc git vim uml-utilities bridge-utils wireshark wireshark-common wireshark-dev \
cpulimit qemu qemu-utils qemu-kvm qemu-user qemu-system-x86 python3 python3-pyqt5 telnet kvmtool \
vinagre virt-viewer python2 cpu-checker libvirt-clients
```

#mensagem de configuração da Captura de Pacotes do Wireshark
Configuration wireshark-common and uBridge
	should non-superusers be able to capture packets? <Sim>
	Should non-superusers be able to run GNS3? <Sim>

____________________

#06_ Corrigindo a falha de permissão do uBridge em clientes VPCS (Virtual PC Simulator) do GNS3 no Linux Mint

#alterando as permissões do binário do uBridge
#opção do comando chmod: -v (verbose), 777 (user=RWX,group=RWX,other=RWX)

```
sudo chmod -v 777 /usr/bin/ubridge
```

____________________

#07_ Verificando a versão do GNS3 instalado no Linux Mint

#verificando a versão fo GNS3

```
gns3 --version
```

____________________

#08_ Configurando o Wireshark para Capturar Pacotes no Computador Local no Linux Mint

#adicionando o seu usuário no grupo do Wireshark
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)

```
sudo usermod -a -G wireshark $USER
```

#alterando a prioridade do grupo do binário do Dumpcap
#opção do comando chgrp: -v (verbose)

```
sudo chgrp -v wireshark /usr/bin/dumpcap
```

#alterando as permissões do binário do Dumpcap
#opções do comando chmod: -v (verbose), 750 (user=RWX,group=R-X,other=---)

```
sudo chmod -v 750 /usr/bin/dumpcap
```

#configurando as opções de captura do Dumpcap

```
sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap
sudo getcap /usr/bin/dumpcap
```

#forçando o seu usuário a pertencer ao grupo do Wireshark
#opção do comando gpasswd: -a (add), $USER (environment variable)

```
sudo gpasswd -a $USER wireshark
```

#fazendo login em um novo grupo do Wireshark

```
newgrp wireshark
```

#verificando os identificadores de usuário e grupos

```
id
```

#recomendado reinicializar a máquina para aplicar as permissões

```
sudo reboot
```

____________________

#09_ Iniciando o GNS3-GUI por Linha de Comando

Terminal: Ctrl + Alt + T

```
gns3
```

____________________

#10_ Configuração Básica do GNS3 na primeira inicialização

Setup Wizard
	Server
		Run appliances on my local computer
		<Next>
	Local server configuration
		Server path: /usb/bin/gns3server
		Host binding: localhost
		Port: 3080 TCP
		<Next>
	Local server status: <Next>
	Summary: <Finish>

____________________

#11_ Configuração da Licença do IOU L2 e L3 no GNS3

#download do script de geração da Licença do IOU L2 e L3
 - wget https://raw.githubusercontent.com/vaamonde/dell-linuxmint/master/scripts/CiscoIOUKeyGen3.py

#gerando a chave de Licença do IOU L2 e L3
#OBSERVAÇÃO IMPORTANTE: selecionar e copiar a chave de licença a partir do bloco [license]
python3 CiscoIOUKeyGen3.py

#editando o arquivo de Licença do IOU L2 e L3
vim .config/GNS3/2.2/iourc
	INSERT
		Colar o bloco de licença: Ctrl + Shift + V
	ESC SHIFT : x <Enter>

____________________

#12_ Configuração das Preferências Básicas do GNS3 Gui

Edit
	Preferences
		General
			General Tab: (Default)
			Binary images Tab: (Default)
			Console applications Tab: (Default)
			VNC Tab: (Default)
			SPICE Tab: (Default)
			Topology view tab: (Default)
			Miscellaneous Tab: (Default)
		Server
			Main server Tab:
				Allow console connections to any local IP address: Enable
			Remote servers Tab: (Default)
		GNS3 VM
			GNS3 VM preferences: (Default)
		Packet capture
			Packet capture preferences: (Default)
		Built-in
			Local settings Tab: (Default)
		VPCS
			Local settings Tab: (Default)
		Dynamips
			Local settings Tab:
				Allocate AUX console ports: Enable
			Advanced local settings: (Default)
		IOS on UNIX
			IOS on UNIX preferences
				IOU license (iourc file):
					(Arquivo de licença do IOU L2/L3 gerado pelo CiscoIOUKeygen2.py)
			Check for a valid IOU license key: Enable
		QEMU
			Local settings: (Default)
		Virtualbox
			Local settings: (Default)
		VMware
			Local settings: (Default)
			Advanced local settings: (Default)
		Docker: (Default)
<Apply>
<OK>

____________________

#13_ Criando um projeto simples no GNS3 Gui e GNS3 Webclient

Project
	New project
		Name: BoraParaPratica
		Location: Default
<OK>

Edit
	Preferences
		VPCS
			VPCS nodes
				New
					Name: Desktop
				<Finish>
		Dynamips
			IOS routers
				New
					IOS image
						New Image: Browse 
						IOS image: Default
					<Next>
					Name and platform
						Name: Router-7200
						Platform: c7200
						Chassis: default
					<Next>
					Memory
						Default RAM: Default
					<Next>
					Network adapters
						Slot 0: Default
					<Next>
					Idle-PC
						Idle-PC: Idle-PC finder
				<Finish>
		IOS on UNIX
			IOU Devices
				New
					Name and image
						Name: Switch-L2
					Image
						New Image:
						Type: L2 image
						IOU image: Browse
				<Finish>
				New
					Name and image
						Name: Router-L3
					Image
						New Image:
						Type: L3 image
						IOU image: Browse
				<Finish>
		<Apply>
	<OK>
