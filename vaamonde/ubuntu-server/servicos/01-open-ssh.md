01 - Instalando o OpenSSH Server e Client no Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: executar a instalação somente se você no processo de instalar
    #o Ubuntu Server não marcou a opção: Install OpenSSH, caso contrário o mesmo já está
    #instalado e pré-configurado.

    #atualizando as listas do Apt
    sudo apt update

    #instalando o OpenSSH Server e Client
    sudo apt install openssh-server openssh-client openssl

02 - Verificando o Serviço e Versão do OpenSSH Server e Client no Ubuntu Server

    #verificando o serviço do OpenSSH Server
    sudo systemctl status ssh
    sudo systemctl restart ssh
    sudo systemctl stop ssh
    sudo systemctl start ssh

    #verificando as versões do OpenSSH Server e Client
    #opção do comando sshd e ssh: -V (version)
    sudo sshd -V
    sudo ssh -V

03 - Verificando a Porta de Conexão do OpenSSH Server

    #OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
    #iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
    #algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
    #e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

    #verificando a porta padrão do OpenSSH Server
    #opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
    sudo lsof -nP -iTCP:'22' -sTCP:LISTEN

04 - Localização dos Arquivos de Configuração do OpenSSH Server

    /etc/ssh/             <-- Diretório de configuração do OpenSSH Server e Client
    /etc/ssh/sshd_config  <-- Arquivo de configuração do OpenSSH Server
    /etc/ssh/ssh_config   <-- Arquivo de configuração do OpenSSH Client
    /etc/hosts.deny       <-- Arquivo de configuração do Firewall de Aplicação TCPWrappers Deny
    /etc/hosts.allow      <-- Arquivo de configuração do Firewall de Aplicação TCPWrappers Allow
    /etc/issue.net        <-- Arquivo de configuração do Banner do Ubuntu Server para acesso remoto
    /var/log/             <-- Diretório de Logs do Sistema Operacional Ubuntu Server
    /var/log/syslog       <-- Log principal do Sistema Operacional Ubuntu Server
    /var/log/auth.log     <-- Log principal das autenticações do Sistema Operacional Ubuntu Server

05 - Habilitando a segurança de acesso ao OpenSSH Server

    #editando o arquivo de configuração de Negação de Serviço e Host
    sudo vim /etc/hosts.deny

    #mostrando o número de linha do arquivo hosts.deny
    ESC SHIFT :set number <Enter>
    INSERT

	    #inserir as informações na linha: 17
	    #lista de serviço: lista de hosts: comando
	    ALL: ALL

    #salvar e sair do arquivo
    ESC SHIFT :x <Enter>

    #editando o arquivo de configuração de Liberação de Serviço e Host
    sudo vim /etc/hosts.allow

    #mostrando o número de linha do arquivo hosts.allow
    ESC SHIFT :set number <Enter>
    INSERT

	    #inserir as informações na linha: 10
	    #lista de serviço: lista de hosts: comando
	    #OBSERVAÇÃO: ALTERAR A REDE OU ENDEREÇO IPv4 CONFORME A SUA NECESSIDADE
	    sshd: 10.26.44.210/24

    #salvar e sair do arquivo
    ESC SHIFT :x <Enter>

06 - Atualizando e editando os arquivos de configuração do OpenSSH Server e do Banner

    #fazendo o backup do arquivo de configuração do OpenSSH Server
    #opção do comando cp: -v (verbose)
    sudo cp -v /etc/ssh/sshd_config /etc/ssh/sshd_config.old

    #atualizando o arquivo de configuração do OpenSSH Server do Github
    #opção do comando wget: -v (verbose), -O (output file)
    sudo wget -v -O /etc/ssh/sshd_config https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/sshd_config

    #atualizando arquivo de configuração do Banner do Ubuntu Server do Github
    sudo wget -v -O /etc/issue.net https://raw.githubusercontent.com/vaamonde/ubuntu-2204/main/conf/issue.net

    #editando o arquivo de configuração do OpenSSH Server
    sudo vim /etc/ssh/sshd_config
    INSERT

	    #alterar a variável ListenAddress na linha: 27 
	    #ListenAddress 172.16.1.xxx para: 10.26.44.210 (SEU_ENDEREÇO_IPV4_DO_UBUNTU)
	    #OBSERVAÇÃO: ALTERAR O ENDEREÇO IPv4 CONFORME A SUA NECESSIDADE
	    ListenAddress 10.26.44.210

	    #alterar a variável AllowUsers na linha: 77
	    #OBSERVAÇÃO: ALTERAR O USUÁRIO DE ACESSO CONFORME A SUA NECESSIDADE
	    AllowUsers senac

	    #alterar a variável AllowGroups na linha: 83
	    #OBSERVAÇÃO: ALTERAR O GRUPO DE ACESSO CONFORME A SUA NECESSIDADE
	    AllowGroups senac

    #salvar e sair do arquivo
    ESC SHIFT :x <Enter>

    #testando o arquivo de configuração do OpenSSH SERVER (NÃO COMENTADO NO VÍDEO)
    #opção do comando sshd: -t (text mode check configuration)
    sudo sshd -t

    #editando o arquivo de configuração do Banner do Ubuntu Server
    sudo vim /etc/issue.net
    INSERT

	    #alterar a linha 5: Servidor e Admin
	    #OBSERVAÇÃO: ALTERAR O BANNER CONFORME A SUA NECESSIDADE
	    Servidor: wserica - Admin: Erica Viana

    #salvar e sair do arquivo
    ESC SHIFT :x <Enter>

    #reiniciar o serviço do OpenSSH Server
    sudo systemctl restart ssh
    sudo systemctl status ssh

    #analisando os Log's e mensagens de erro do Servidor do OpenSSH (NÃO COMENTADO NO VÍDEO)
    #opção do comando journalctl: -t (identifier), x (catalog), e (pager-end), u (unit)
    sudo journalctl -t sshd
    sudo journalctl -xeu ssh

07 - Acessando remotamente o OpenSSH Server via Powershell e pelo software PuTTY

    #acessando o OpenSSH via Powershell
    Windows
	    Pesquisa do Windows
		    Powershell
			    ssh senac@10.26.44.210 (alterar para o endereço IPv4 do seu servidor)

    #acessando o OpenSSH via PuTTY
    Windows
	    Pesquisa do Windows
		    PuTTY

    Category
	    Session
		    Host Name (or IP address): senac@10.26.44.210 (alterar para o endereço IPv4 do seu servidor)
		    Port: 22
		    SSH: On
    <Open>

    #acessando o OpenSSH via Terminal no Linux Mint
    Linux
	    Terminal: Ctrl + Alt + T
		    ssh senac@10.26.44.210 (alterar o usuário e endereço IPv4 do seu servidor)

    #verificando informações detalhadas dos usuários logados no Ubuntu Server
    #OBSERVAÇÃO IMPORTANTE 01: no comando: w ele mostra na primeira linhas as
    #informações de: Data e Hora Atual do Sistema, Período de Tempo Ativo, Número
    #de Usuários Logados e as Médias de Cargas do Sistema (1, 5 e 15 minutos).
    #OBSERVAÇÃO IMPORTANTE 02: no comando: w ele mostra as informações separadas
    #por colunas: USER (usuário logado), TTY (terminal do usuário), FROM (origem
    #da conexão), LOGIN@ (hora do login do usuário), IDLE (tempo ocioso do usuário), 
    #JCPU (tempo de CPU dos processo do TTY), PCPU (tempo de CPU do processo do
    #último comando o usuário), WHAT (processo atual do usuário).
    sudo w

    #verificando os usuários logados remotamente no Ubuntu Server
    #OBSERVAÇÃO IMPORTANTE: no comando: who ele mostra as informações separadas
    #por colunas: NAME (usuário logado), LINE (terminal do usuário), TIME (data e 
    #hora do login do usuário), IDLE (tempo ocioso do usuário), PID (identificação 
    #do processo), COMMENT (origem da conexão do usuário), EXIT ().
    #opção do comando who: -H (heading), -a (all)
    sudo who -Ha

    #verificando os usuários logados no Ubuntu Server
    users

#08_ Criando um usuário Administrador no Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: NESSE EXEMPLO ESTÁ SENDO CRIADO UM USUÁRIO ADMIN PARA A
    #ADMINISTRAÇÃO DO SERVIDOR, NÃO RECOMENDO CRIAR UM USUÁRIO CHAMADO: admin POIS
    #É UM USUÁRIO CONHECIDO E EXISTE VÁRIOS SOFTWARE DE FORÇA BRUTA QUE USA ESSE
    #USUÁRIO PARA INVADIR SERVIDORES. NESSE EXEMPLO SERÁ CRIADO APENAS PARA EFEITO
    #DE APRENDIZAGEM.

    #criando o usuário Admin local no Ubuntu Server
    sudo adduser admin
	    New password: 123@senac
	    Retype new password: 123@senac
		    Full Name []: senac
		    Room Number []: <Enter>
		    Work Phone []: <Enter>
		    Home Phone []: <Enter>
		    Other []: <Enter>
	    Is the information correct? [Y/n] y <Enter>

    #listando o usuário criado no arquivo passwd
    #opção do comando cat: -n (number line)
    #opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
    sudo cat -n /etc/passwd | grep admin

    #listando o usuário criado com o comando getent
    sudo getent passwd admin

    #listando o grupo criado no arquivo group
    #opção do comando cat: -n (number line)
    #opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
    sudo cat -n /etc/group | grep admin
    
    #listando o grupo criado com o comando getent
    sudo getent group admin

09 - Adicionando o usuário Admin no grupo SUDO (Super User Do)

    #adicionando o usuário Admin ao grupo do SUDO
    #opção do comando usermod: -a (append), -G (groups)
    sudo usermod -aG sudo admin

    #verificando os grupos do usuário Admin
    sudo groups admin

    #verificando as identificações de grupos do usuário Admin
    sudo id admin

10 - Se logando no Terminal (Bash/Shell) do Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: fazer o teste de Login no Terminal do Ubuntu Server na Máquina
    #Virtual para verificar se está tudo OK na autenticação do usuário admin.
