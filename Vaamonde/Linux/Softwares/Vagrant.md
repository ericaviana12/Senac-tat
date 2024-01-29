#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

Terminal: Ctrl + Alt + T

#verificando as versões e codinome do sistema operacional
OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
sudo cat /etc/os-release
sudo cat /etc/lsb-release
sudo localectl

#modo gráfico para verificar as informações de sistema operacional e hardware
Menu
	Informações do Sistema

____________________

#01_ Atualização do Sistema Operacional Linux Mint

_ Atualização do sistema utilizando o MintUpdate;
_ Atualização do sistema utilizando o Apt;

Terminal: Ctrl + Alt + T
	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean

____________________

#02_ Adicionando a Chave GPG do Vagrant no Linux Mint

#opções do comando wget: -q (quiet), -O (output file), - (file name)
wget -q -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp.gpg > /dev/null 2>&1

____________________

#03_ Adicionando o Repositório do Vagrant no Linux Mint

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 20.x
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com focal main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 21.x
echo "deb [signed-by=/usr/share/keyrings/hashicorp.gpg] https://apt.releases.hashicorp.com jammy main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

____________________

#04_ Atualizando as Lista do Apt com o novo Repositório do Vagrant no Linux Mint

sudo apt update

____________________

#05_ Instalando o Vagrant e o Packer e verificando a sua versão no Linux Mint

#instalando o Vagrant e suas dependências
sudo apt install vagrant packer vim git tree python3 python2

#verificando as versões do Vagrant e Packer
vagrant --version
packer --version

____________________

#06_ Criando o diretório de Projetos do Vagrant no Linux Mint

#opções do comando mkdir: -p (parents), -v (verbose), 
#opção do comando cd: ~ (til: alias home directory)
mkdir -pv ~/Projetos/Ubuntu2004
cd ~/Projetos/Ubuntu2004

____________________

#07_ Criando o arquivo de configuração da VM Vagrantfile do nosso projeto no Linux Mint

#Link de referência: https://www.vagrantup.com/docs/cli/init
#Link do Vagrant Cloud da Imagem do Ubuntu 20.04: https://app.vagrantup.com/generic/boxes/ubuntu2004
#opção do comando vagrant: init (initializes a new Vagrant environment by creating a Vagrantfile)
vagrant init generic/ubuntu2004

#Link de referência: https://www.vagrantup.com/docs/vagrantfile
#opções do comando ls: -l (long listing), -h (human-readable)
ls -lh
less Vagrantfile

____________________

#08_ Iniciando o Projeto da VM do Ubuntu Server 20.04 no VirtualBOX utilizando o Vagrant

#Link de referência: https://www.vagrantup.com/docs/cli/up
#opção do comando vagrant: up (starts and provisions the vagrant environment)
vagrant up

#opção do comando tree: -a (all)
tree -a

____________________

#09_ Acessando a VM do Ubuntu Server 20.04 no VirtualBOX utilizando o SSH do Vagrant

#Link de referência: https://www.vagrantup.com/docs/cli/ssh
#opção do comando vagrant: ssh (connects to machine via SSH)
vagrant ssh

#Comandos Básicos da Imagem do Ubuntu Server 20.04
ip address show
ip route show
resolvectl
exit

____________________

#10_ Verificando as informações da VM do Ubuntu Server 20.04 no VirtualBOX criada com o Vagrant

#Link de referência: https://www.vagrantup.com/docs/cli/status
#Link de referência: https://www.vagrantup.com/docs/cli/global-status
#opção do comando vagrant: global-status (outputs status Vagrant environments for this user)
vagrant status
vagrant global-status

____________________

#11_ Desligando a VM do Ubuntu Server 20.04 no VirtualBOX criada com o Vagrant

#Link de referência: https://www.vagrantup.com/docs/cli/halt
#Link de referência: https://www.vagrantup.com/docs/cli/status
#Link de referência: https://www.vagrantup.com/docs/cli/global-status
#opção do comando vagrant: halt (stops the vagrant machine), status (outputs status of the vagrant machine)
vagrant halt
vagrant status
vagrant global-status

____________________

#12_ Removendo a VM do Ubuntu Server 20.04 no VirtualBOX criada com o Vagrant

#Link de referência: https://www.vagrantup.com/docs/cli/destroy
#Link de referência: https://www.vagrantup.com/docs/cli/global-status
#opção do comando vagrant: destroy (stops and deletes all traces of the vagrant machine)
vagrant destroy
	default: Are you sure you want to destroy the 'default' VM? [y/N]
vagrant global-status

____________________

#13_ Listando todas as BOXES (Imagens) baixadas do Vagrant

#Link de referência: https://www.vagrantup.com/docs/cli/box
#opção do comando vagrant: box (manages boxes: installation, removal, etc.), list (boxes list)
vagrant box list

____________________

#14_ Removendo a BOXES (Imagens) baixada do Ubuntu Server 20.04 no Vagrant

#Link de referência: https://www.vagrantup.com/docs/cli/box
#opção do comando vagrant: box (manages boxes: installation, removal, etc.), remove (boxes remove)
#opção do comando tree: -a (all), ~ (til: alias home directory)
#opção do comando du: -h (human-readable), ~ (til: alias home directory)
tree -a ~/.vagrant.d/
du -h ~/.vagrant.d/
vagrant box remove generic/ubuntu2004
vagrant box list

____________________

#15_ Criando um novo projeto utilizando uma BOX (Imagem) Oficial do Ubuntu Server

#opções do comando mkdir: -v (verbose), .. (ponto/ponto - mover uma pasta para cima)
cd ..
mkdir -v Ubuntu2204
cd Ubuntu2204

#Criando o arquivo do Vagrantfile pré-configurado com a estrutura padrão

#opção do comando vagrant: init (initializes a new Vagrant environment by creating a Vagrantfile), -m (minimal Vagrantfile will be created)
vagrant init -m

vim Vagrantfile
	ESC dG (d=delete | G=end of file)
	INSERT

____________________
 
#Início da configuração da BOX (Imagem) do Vagrant indicando a maior versão ("2")
#OBSERVAÇÃO IMPORTANTE: Recuo PADRÃO adequado SEMPRE usar ESPAÇO e NÃO TAB (tabulador) - 2(dois) ESPAÇOS
Vagrant.configure("2") do |config|
  #Configuração das Definições do Nome do BOX Local do Vagrant para Multi-VM
  #OBSERVAÇÃO IMPORTANTE: caso não use a opção define será criado uma BOX com o nome Padrão: default
  config.vm.define "webserver" do |web|
    #Configuração do nome do BOX Local do Vagrant
    web.vm.box = "ubuntu2204"
    #Link de download da Imagem do Ubuntu Server 22.04 Oficial
    web.vm.box_url = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64-vagrant.box"
    #Configuração do Hostname do BOX do Ubuntu Server no Vagrant
    web.vm.hostname = "webserver"
    #Configuração do Endereçamento Público IPv4 da BOX do Ubuntu Server do Vagrant
    #OBSERVAÇÃO IMPORTANTE: por padrão o Vagrant utiliza a primeira Interface de Rede em Modo NAT
    #para acessar via SSH a BOX do Ubuntu Server, quando configurado a Interface Pública do Vagrant
    #ele habilita a segunda Interface do VirtualBOX em Modo Bridge e configura o Endereço IPv4 Estático
    #verifique primeiro com o comando: ifconfig qual Interface de Rede do Hospedeiro que você vai usar
    #em modo Bridge
    web.vm.network "public_network", ip: "192.168.0.251", bridge: "enp3s0"
    #Configuração da Máquina Virtual do BOX do Ubuntu Server no VirtualBOX do Vagrant
    web.vm.provider "virtualbox" do |vb|
      #Configuração do nome da Máquina Virtual no VirtualBOX do Vagrant
      vb.name = "ubuntu-server-2204"
      #Configuração da quantidade de Memória RAM da Máquina Virtual no VirtualBOX do Vagrant
      vb.memory = "1024"
      #Configuração da quantidade de vCPU's da Máquina Virtual no VirtualBOX do Vagrant
      vb.cpus = "2"
    #Fim do Bloco de Configuração: Provider (virtualbox |vb|)
    end
  #Fim do Bloco de Configuração: Define (webserver |web|)
  end
#Fim do Bloco de Configuração: Configure (|config|)
end

____________________

	#salvar e sair do arquivo
	ESC Shift :x <Enter>

#opção do comando vagrant: validade (validates your Vagrantfile)
vagrant validate

#opção do comando vagrant: up (starts and provisions the vagrant environment)
vagrant up

#opção do comando vagrant: ssh (connects to machine via SSH)
vagrant ssh

#opção do comando ssh: -p (port), -i (identity_file)
ssh -p 22 -i .vagrant/machines/webserver/virtualbox/private_key vagrant@192.168.0.251

#opção do comando vagrant: halt (stops the vagrant machine), status (outputs status of the vagrant machine)
vagrant halt
vagrant status

#opção do comando vagrant: box (manages boxes: installation, removal, etc.), list (boxes list)
vagrant box list
