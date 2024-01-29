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

#02_ Download do EdrawMax para o Linux Mint

Site do download: https://www.edrawsoft.com/pt/download-edrawmax.html
Versão para: Debian, Ubuntu, Mint 64 bits: <Teste Grátis>
Arquivo (download feito em 22/12/2022): edrawmax_11.5.6_en_x86_64.deb

____________________

#03_ Instalando o EdrawMax no Linux Mint

OBSERVAÇÃO IMPORTANTE: recomendo utilizar o Gerenciador de Instalação de Pacotes
do Linux Mint: Gdeb, clicando duas vezes no arquivo: edrawmax_11.5.6_en_x86_64.deb
Seguir os procedimentos na tela.

OBSERVAÇÃO IMPORTANTE: teste feito no Linux Mint 21.1 Vera do instalador do pacote
do EdrawMax via Gerenciador de Instalação Gdeb não funcionou corretamente, sendo
necessário fazer a instalação via linha de comando, conforme abaixo:

01_ Na pasta de Download, clicar com o botão direito do mouse e selecionar: Abrir no Terminal;
02_ Digitar o comando: sudo dpkg -i edrawmax_11.*.deb;
03_ Digitar a senha do seu usuário e aguardar a finalização da instalação.

____________________

#04_ Utilizando o EdrawMax On-Line via Navegaor

_ Site do EdrawMax On-Line: https://www.edrawmax.com/online/pt/
