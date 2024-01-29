#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

Terminal: Ctrl + Alt + T

OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
sudo cat /etc/os-release
sudo cat /etc/lsb-release
sudo localectl

Menu
	Informações do Sistema

____________________

#01_ Atualização do Sistema Operacional Linux Mint

Atualização do sistema utilizando o MintUpdate;
Atualização do sistema utilizando o Apt;

Terminal: Ctrl + Alt + T
	sudo apt update
	sudo apt upgrade
	sudo apt full-upgrade
	sudo apt dist-upgrade
	sudo apt autoremove
	sudo apt autoclean

____________________

#02_ Instalando as Dependências do Eclipse IDE no Linux Mint

#INSTALANDO O ECLIPSE IDE NO LINUX MINT 20.x
sudo apt install git vim openjdk-17-jdk openjdk-17-jre openjdk-17-jre-headless \
software-properties-common build-essential

#INSTALANDO O ECLIPSE IDE NO LINUX MINT 21.x (RECOMENDADO UTILIZAR A VERSÃO 17)
sudo apt install git vim openjdk-17-jdk openjdk-17-jre openjdk-17-jre-headless \
software-properties-common build-essential

#OBSERVAÇÃO IMPORTANTE: USAR OUTRAS VERSÕES DO JAVA PODE ACARRETAR EM FALHAS DE PROJETO
#DE SOFTWARE, CUIDADO COM A VERSÃO DO JAVA UTILIZADO EM SEU PROJETO.

#CASO QUEIRA UTILIZAR OUTRAS VERSÕES DO JAVA NO LINUX 21.x (EXECUTAR SOMENTE SE NECESSÁRIO)
sudo apt install git vim openjdk-18-jdk openjdk-18-jre openjdk-18-jre-headless \
software-properties-common build-essential

sudo apt install git vim openjdk-19-jdk openjdk-19-jre openjdk-19-jre-headless \
software-properties-common build-essential

____________________

#03_ Verificando as Versões do Java instalado no Linux Mint

#opção do comando grep: -i (ignore-case)
sudo java -version
sudo apt list --installed | grep -i openjdk
sudo update-alternatives --list java
sudo update-java-alternatives --list

____________________

#04_ Configurando o Versão do Java Padrão no Linux Mint

#OBSERVAÇÃO IMPORTANTE: cuidado com a versão do Java que você for utilizar no seu projeto, 
versões diferentes pode causar falha de abertura do projeto ou erro na hora de executar a 
compilação e criação do arquivo WAN ou JAR.
sudo update-alternatives --config java

____________________

#05_ Download do Eclipse IDE no Linux Mint

#recomendo utilizar a versão do Eclipse IDE Enterprise Java e Web
Link do download: https://www.eclipse.org/downloads/packages/
Versão do Eclipse: Eclipse IDE for Enterprise Java and Web Developers
	Linux x86_64: eclipse-jee-2023-09-R-linux-gtk-x86_64.tar.gz (atualizado em 12/11/2023)

____________________

#06_ Descompactar o Arquivo Zipado do Eclipse IDE no Linux Mint

_01 acessar o diretório: Download;
_02 clicar com o botão direito do mouse no arquivo: eclipse-jee-*.tar.gz
_03 selecionar a opção: Extrair aqui

____________________

#07_ Executando o Eclipse IDE no Linux Mint

_01 acessar o diretório: eclipse
_02 executar o aplicativo (clicando duas vezes): eclipse
_03 na tela de Eclipse IDE Launcher deixar o padrão do Workspace:
	Workspace: /home/seu_usuário/eclipse-workspace/
_04 marque a opção: use this default and do not ask again
_05 clique em: <Launch>

____________________

#08_ Configuração Básica do Eclipse IDE no Linux Mint

OBSERVAÇÃO IMPORTANTE: devido ao Tema Black/Dark do Linux Mint o Eclipse IDE fica com 
uma aparência que os ícones/botões não aparece corretamente, para resolver esse problema 
recomendo utilizar o Tema Dark do Eclipse IDE.

Windows
	Preferences
		General
			Appearance
				Theme: Dark
<Apply and Close>
<Restart>

____________________

#09_ Clocando um Projeto Desenvolvido em JAVA no Workspace do Eclipse IDE no Linux Mint

Terminal: Ctrl + Alt + T

cd eclipse-workspace/
	git clone https://github.com/vaamonde/javaimc

____________________

#10_ Importando o Projeto Desenvolvido em JAVA utilizando Eclipse IDE no Linux Mint

File
	Import
		Select
			General
				Existing Projects into Workspace
		<Next>
		Import Projects
			Select root directory: <Browse>
				/home/seu_usuário/eclipse-workspace/
			Project
				javaimc
		<Finish>

____________________

#11_ Executando o Projeto Desenvolvido em JAVA utilizando Eclipse IDE no Linux Mint

Project Explorer
	javaimc
		src
			view
			TelaIMC.java
<Run TelaIMC> (atalho: Ctrl+3 - selecionar: Run)
