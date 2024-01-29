#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

Terminal: Ctrl + Alt + T

OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish
sudo cat /etc/os-release
sudo cat /etc/lsb-release

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

#02_ Instalando as Dependências do Microsoft Visual Studio Code VSCode no Linux Mint

sudo apt install vim git python2 python3 cloc

____________________

#03_ Baixando o Microsoft Visual Studio Code VSCode para o Linux Mint

https://code.visualstudio.com/download
	Versão: .deb (Debian, Ubuntu 64 Bits)
		Salvar aquivo

____________________

#04_ Instalando o Microsoft Visual Studio Code VSCode utilizando o Gdebi-Gtk no Linux Mint

Arquivos
	Download
		code_1.*_amd64
			Instalar Pacote
		Fechar

____________________

#05_ Verificando o novo repositório do Microsoft Visual Studio Code VSCode no MintUpdate

Menu
	MintUpdate
		Editar
			Fontes de Programas
				(Digite a senha do seu usuário)
					Repositórios Adicionais
						Habilitado: Microsoft / Stable - code
					Chaves de Autenticação
						Microsoft (Release signing)
			Fechar
	Fechar

____________________

#06_ Iniciando o Microsoft Visual Studio Code VSCode no Linux Mint

Menu
	Busca Indexada
		vscode
			Dark Theme
			Notifications: Pacote PT-BR
			Disable: Mostrar página inicial na inicialização

____________________

#07_ Configurando o Microsoft Visual Studio Code VSCode como Aplicativo de Preferência no Linux Mint

Menu
	Busca Indexada
		Aplicativos de Preferencias
			Texto puro: Visual Studio Code
			Código fonte: Visual Studio Code

____________________

#08_ Instalando e Configurando as Principais Extensões Microsoft Visual Studio Code VSCode

Portuguese (Brazil) Language Pack for Visual Studio Code
	(Sem necessidade de configuração)

Brazilian Portuguese - Code Spell Checker (Corretor Ortográfico de Código)
Manter selecionado a extensão: Brazilian Portuguese - Code Spell Checker
	Pressionar F1
		Show Spell Checker Configuration Info
			User
				Language
					English (en_us)
					Portuguese (pt_br)
					Portuguese - Brazil (pt-br)
				File Types and Programming Languages
					shellscript, python, markdown, etc...

Code Spell Checker
	(Sem necessidade de configuração)

Bats (Bash Automated Testing System)
	(Sem necessidade de configuração)

Bash Beautify
	(Sem necessidade de configuração)

Shell-Format
	(Sem necessidade de configuração)

ShellCheck
	(Sem necessidade de configuração)

Cisco IOS Syntax
	(Sem necessidade de configuração)

Cisco IOS-XR Syntax
	(Sem necessidade de configuração)

Cisco Config Highlight
	(Sem necessidade de configuração)

Pylance
	(Sem necessidade de configuração)

Python
	(Sem necessidade de configuração)

Docker
	(Sem necessidade de configuração)

Powershell
	(Sem necessidade de configuração)

Ansible
	(Sem necessidade de configuração)

YAML
	(Sem necessidade de configuração)

MySQL
	(Sem necessidade de configuração)

Remote - SSH
	(Sem necessidade de configuração)

NoSQL
	(Sem necessidade de configuração)

____________________

#09_ Configurações básicas do Microsoft Visual Studio Code VSCode para funcionar perfeitamente no Linux Mint

Gerenciar
	Configurações
		Code Spell Checker
			C Spell: Enabled Language Ids: 
				Adicionar Item: shellscript
			C Spell: Language: en,pt,pt-BR
			C Spell: Max Duplicate Problems: 500000
			C Spell: Max Number Of Problems: 500000
		Editor
			Editor: Tab Size: 4
			Editor: Detect Indentation: False (Off)
			Editor: Insert Spaces: False (Off)
			Render Whitespace: All
		Files
			Files: Eol: \n (LF)

		#OBSERVAÇÃO IMPORTANTE: executar essa configuração somente se você fez a instalação
		#do ZSH, das Fontes Hack e do Oh My ZSH.
		Font
			Integrated: Font Family
				Hack Nerd Font
		
		#Configuração do Terminal Padrão do VSCODE
		Ctrl + Shift + P
			Terminal: Selecionar o Perfil Padrão
				zsh
