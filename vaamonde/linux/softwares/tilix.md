#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

Terminal: Ctrl + Alt + T

#verificando as versões e codinome do sistema operacional
#OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa
#OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish

```
sudo cat /etc/os-release
sudo cat /etc/lsb-release
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
```

____________________

#02_ Instalando o Terminal Tilix no Linux Mint

#instalando o Tilix e suas dependências

```
sudo apt install tilix unzip git vim python2 python3
```

____________________

#03_ Instalando a Fonte Hack Nerd Fonts no Linux Mint

#criando o diretório das fontes Hack Nerd Fonts
#opção do comando mkdir: -v (verbose), -p (parents), ~ (til: alias home directory)

```
mkdir -pv ~/.local/share/fonts/Hack
```

#acessando o diretório das fontes Hack (link atualizado no dia 15/11/2023)

```
cd ~/.local/share/fonts/Hack
```

#baixando as fontes do Github (link atualizado em: 03/12/2024)

```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
```

#descompactando o arquivo zipado das fontes

```
unzip Hack.zip
```

#atualizando o cache de fontes do sistema operacional com as novas fontes
#opção do comando fc-cache: -f (Force up-to-date cache files), -v (Display status)

```
fc-cache -f -v
```

#saindo do terminal

```
exit
```

____________________

```
#04_ Configurando o Tilix como Terminal Padrão no Linux Mint

#OBSERVAÇÃO IMPORTANTE: no Linux Mint 20.x a mudança do Terminal padrão é feita utilizando
#o recurso das Configurações do Sistema em Aplicativos Preferenciais
Menu
	Aplicativos Preferenciais
		Terminal
			Tilix

#OBSERVAÇÃO IMPORTANTE: no Linux Mint 21 e 21.1 a mudança do Terminal padrão não é mais feita
#utilizando o recurso das Configurações do Sistema em Aplicativos Preferenciais, essa opção
#foi retirada da ferramenta, sendo necessário alterar via linha de comando:

#opção do comando gsettings: set (Sets the value of KEY to VALUE)
gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/tilix
exit

#OBSERVAÇÃO IMPORTANTE: no Linux Mint 21.2 Victoria e 21.3 Virginia o recurso de configurar o 
#terminal pelo Aplicativos Preferenciais voltou, recomendo fazer por ele, não utilizar o comando: 
#gsettings para essa configuração.

Menu
	Aplicativos Preferenciais
		Sistema
			Terminal
				Tilix
```

____________________

#05_ Executando o Tilix no Linux Mint

Atalho do Terminal: Ctrl + Alt + T

____________________

```
#06_ Customização Básica do Tilix no Linux Mint

#OBSERVAÇÃO IMPORTANTE: quando você executar o Tilix pela primeira vez a mensagem de Problema de
#Configuração detectado é apresentado, essa falha está associada ao VTE (Virtual Terminal Emulator)
#você pode clicar em: Não exibir esta mensagem novamente ou essa falha será corrigida depois que
#você instalar e configurar o ZSH e o Oh-My-ZSH.

Menu
	Preferências
		Aparência
			Usar abas em vez da barra lateral (necessário reiniciar aplicação)
		Padrão (Default)
			Geral
				Fonte Personalizada: Yes
					Hack Nerd Font Mono Bold
					Tamanho: 16
						Selecionar
			Cor
				Esquemas de Cores: Monokai Dark
				Transparência: Aumentar um Pouco
Fechar
```

____________________

#07_ Instalando o Zsh (Z Shell) e Oh My Zsh no Linux Mint

Terminal: Ctrl + Alt + T

#atualizando as lista do Apt e instalando o ZSH

```
sudo apt update
sudo apt install zsh
```

#Executando o Terminal ZSH

```
zsh
```

```
#selecione a opção 2 para a criação do arquivo: ~/.zshrc com as configurações recomendadas
Type one of the keys in parentheses: 2

#instalando o Oh My Zsh no Linux Mint via script do Github
#opção do comando sh: -c (Read commands from the command_string operand in‐stead of from the standard input)
#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location) 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	Do you want to change your default shell to zsh? [Y/n] Y <Enter>
	[sudo] senha do seu usuário: <Enter>

#recomendo fechar o Terminal Tilix e abrir novamente para verificar se tudo está funcionando
#será necessário sair 03 (três) vezes do terminal para concluir a configuração, você pode usar
#o atalho: Ctrl + D para sair dos terminais.
```

```
exit
```

```
exit
```

```
exit
```

____________________

#08_ Instalação dos Plugins e Temas do ZSH e do Oh My Zsh no Linux Mint

Atalho: Ctrl + Alt + T

Link de referência: https://github.com/zsh-users/zsh-syntax-highlighting
Link de referência FZF: https://github.com/junegunn/fzf.git

#Instalação do Plugin Highlighting do ZSH

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#Instalação do Plugin Zsh-AutoSuggestions do ZSH

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

#Instalação do Plugin K do ZSH

```
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k
```

#Instalação do Tema PowerLevel10K

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

#Instalação do Plugin FZF do ZSH

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
```

#Executando o instalador do Plugin FSF do ZSH
~/.fzf/install
	Do you want to enable fuzzy auto-completion? ([y]/n) y <Enter>
	Do you want to enable key bindings? ([y]/n) y <Enter>
	Do you want to update your shell configuration files? ([y]/n) y <Enter>

____________________

09_ Editando o arquivo de configuração do ZSHRC no Linux Mint

#editando o arquivo de configuração do ZSHRC

```
vim ~/.zshrc
```

```
#entrar no modo de edição do Vim
INSERT

#Variáveis de configuração do Tema PowerLevel10K
#Copiar e colar substituindo a partir da linha: 11
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_MODE="nerdfont-complete"

#Variável de configuração dos Plugins do ZSH
#Copiar e colar substituindo a partir da linha: 74
plugins=(
	git
	zsh-syntax-highlighting
	fzf
	zsh-autosuggestions
	k
)
source $ZSH/oh-my-zsh.sh

#salvar e sair do arquivo
ESC SHIFT :x <Enter>

#recomendo fechar o Terminal Tilix e abrir novamente para verificar se tudo está funcionando,
#deverá iniciar automaticamente a customização do Tema PowerLevel10K utilizando o Wizard padrão.
```

____________________

```
#10_ Personalizando o Tema PowerLevel10K no Linux Mint

#abrir um novo terminal para iniciar as configurações do PowerLevel10K
Terminal: Ctrl + Alt + T

	Does this look like a diamond (rotated square)?
		Choice [ynrq]: y
	
	Does this look like a lock?
		Choice [ynrq]: y
	
	Does this look like an upwards arrow?
		Choice [ynrq]: y

	Do all these icons fit between the crosses?
		Choice [ynrq]: y

	Prompt Style: (2) Classic.
		Choice [1234rq]: 2
	
	Character Set: (1) Unicode.
		Choice [12rq]: 1
	
	Prompt Color: (4) Darkest.
		Choice [1234rq]: 4
	
	Show current time?: (2) 24-hour format.
		Choice [n12rq]: 2
	
	Prompt Separators: (3) Slanted.
		Choice [1234rq]: 3
	
	Prompt Heads: (1) Sharp.
		Choice [1234rq]: 1
	
	Prompt Tails: (1) Flat.
		Choice [12345rq]: 1
	
	Prompt Height: (2) Two lines.
		Choice [12rq]: 2
	
	Prompt Connection: (1) Disconnected.
		Choice [123rq]: 1
	
	Prompt Frame: (1) No frame.
		Choice [1234rq]: 1
	
	Prompt Spacing: (2) Sparse.
		Choice [12rq]: 2
	
	Icons: (2) Many icons.
		Choice [12rq]: 2
	
	Prompt Flow: (2) Fluent.
		Choice [12rq]: 2
	
	Enable Transient Prompt? (n) No.
		Choice [ynrq]: n
	
	Instant Prompt Mode: (1) Verbose (recommended).
		Choice [123rq]: 1
	
	Apply changes to ~/.zshrc?: (y) Yes (recommended).
	 	Choice [ynrq]: y

#caso queira reconfigurar o PowerLevel10K novamente digite o comando abaixo.
p10k configure
```

____________________

```
#11_ Configurando o Visual Studio Code com suporte a Fonte Hack Nerd Font e Terminal ZSH

#OBSERVAÇÃO IMPORTANTE: executar esse procedimento somente se você tem instalado
#o Microsoft Visual Studio no seu Linux Mint

Gerenciar
	Configurações
		terminal.integrated.fontFamily
			Hack Nerd Font

Ctrl + J
	Terminal: Selecionar o Perfil Padrão (Símbolo do + Launch Profile)
		zsh
		#OBSERVAÇÃO: remover depois o bash do perfil padrão
```
