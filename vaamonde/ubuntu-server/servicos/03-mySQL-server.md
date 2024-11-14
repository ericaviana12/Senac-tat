01 - Instalando o MySQL Server e Client

    #atualizando as listas do Apt
    sudo apt update

    #instalando o MySQL Server e Client
    sudo apt install git vim libproj22 proj-data mysql-server-8.0 mysql-client-8.0

02 - Verificando o Serviço e Versão do MySQL Server

    #verificando o serviço do MySQL Server
    sudo systemctl status mysql
    sudo systemctl restart mysql
    sudo systemctl stop mysql
    sudo systemctl start mysql

    #verificando as versões do MySQL Server e Client
    sudo mysqld --version
    sudo mysql --version

03 - Verificando a Porta de Conexão do MySQL Server

    #OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
    #iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
    #algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
    #e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

    #opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
    sudo lsof -nP -iTCP:'3306' -sTCP:LISTEN

04 - Localização dos Arquivos de Configuração do MySQL Server

    /etc/mysql                          <-- Diretório de configuração do SGBD MySQL Server
    /etc/mysql/mysql.conf.d/mysqld.cnf  <-- Arquivo de configuração do Servidor SGBD do MySQL Server
    /etc/mysql/mysql.conf.d/mysql.cnf   <-- Arquivo de configuração do Cliente SGBD do MySQL Client
    /var/log/mysql                      <-- Diretório padrão dos Logs do SGBD Mysql Server
    /var/lib/mysql                      <-- Diretório da Base de Dados padrão do SGBD MySQL Server

05 - Acessando o MySQL Server utilizando o MySQL Client (Console)

    #OBSERVAÇÃO IMPORTANTE: por padrão o usuário Root do MySQL Server não tem senha para
    #se logar no MySQL Client Console.

    #opções do comando mysql: -u (user), -p (password)
    sudo mysql -u root -p

06 - Aplicando a segurança de acesso do usuário Root no MySQL Server

    /* visualizando as bases de dados do MySQL */
    SHOW DATABASES;

    /* utilizando a base de dados mysql */
    USE mysql;

    /* mostrando as tabelas criadas na base de dados mysql */
    SHOW TABLES;

    /* selecionando o dados da tabela user, filtrando somente as colunas: user e host */
    SELECT user,host FROM user;

    /* alterando a senha do usuário Root Localhost */
    /* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ROOT CONFORME A SUA NECESSIDADE */
    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123@senac';

    /* alterando as permissões do usuário Root Localhost */
    GRANT ALL ON *.* TO 'root'@'localhost';

    /* aplicando todas as mudanças na base de dados */
    FLUSH PRIVILEGES;

    /* saindo do MySQL Client Console */
    exit

---

    #testando novamente o acesso ao MySQL Server agora com senha
    #opções do comando mysql: -u (user), -p (password)
    sudo mysql -u root -p

07 - Criando um usuário DBA (Data Base Administrator) no MySQL Server

    /* criando o usuário DBA Localhost */
    /* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO DBA CONFORME A SUA NECESSIDADE */
    CREATE USER 'dba'@'localhost' IDENTIFIED WITH mysql_native_password BY '123@senac';

    /* alterando as permissões do usuário DBA Localhost */
    GRANT ALL ON *.* TO 'dba'@'localhost';

    /* aplicando todas as mudanças na base de dados */
    FLUSH PRIVILEGES;

    /* Verificando o Usuário DBA criado no Banco de Dados MySQL Server*/
    SELECT user,host FROM mysql.user WHERE user='dba';

    /* saindo do MySQL Client Console */
    exit

---

    #se logando com o usuário dba para testar a conexão com o MySQL Server
    #opções do comando mysql: -u (user), -p (password)
    sudo mysql -u dba -p

---

    /* visualizando as bases de dados do MySQL */
    SHOW DATABASES;

    /* saindo do MySQL Client Console */
    exit

08 - Adicionando o Usuário Local no Grupo Padrão do MySQL Server

    #opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
    sudo usermod -a -G mysql $USER
    newgrp mysql
    id

    #recomendo fazer logout do usuário para testar as permissões de grupos
    #OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl +D
    exit

    #opções do comando mysql: -u (user), -p (password)
    mysql -u dba -p

09 - Permitindo o Root do MySQL se Logar Remotamente no MySQL Client Console

    #fazendo o backup do arquivo de configuração do MySQL Server
    #opção do comando cp: -v (verbose)
    sudo cp -v /etc/mysql/mysql.conf.d/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf.old

    #editar o arquivo de configuração do MySQL Server
    sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf
    INSERT

	    #alterar a linha: 31 variável do: bind-address = 127.0.0.1 para: 0.0.0.0
	    bind-address = 0.0.0.0

	    #comentar a linha:32 da variável do: mysqlx-bind-address
	    #mysqlx-bind-address = 127.0.0.1

    #salvar e sair do arquivo	
    ESC SHIFT :x <Enter>

    #testando o arquivo de configuração do MySQL SERVER
    #opção do comando mysqld: --validate-config (checked for problems without running the server)
    sudo mysqld --validate-config

    #reiniciar o serviço do MySQL Server
    sudo systemctl restart mysql
    sudo systemctl status mysql

    #analisando os Log's e mensagens de erro do Servidor do MySQL (NÃO COMENTADO NO VÍDEO)
    #opção do comando journalctl: x (catalog), e (pager-end), u (unit)
    sudo journalctl -xeu mysql

    #acessar o MySQL Server como Root
    sudo mysql -u root -p

---

    /* criando o usuário Root Remoto do MySQL Server */
    /* OBSERVAÇÃO: ALTERAR A SENHA DO USUÁRIO ROOT CONFORME A SUA NECESSIDADE */
    CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'pti@2018';
    GRANT ALL ON *.* TO 'root'@'%';
    FLUSH PRIVILEGES;

    /* verificando o usuário Root Remoto do MySQL Server */
    USE mysql;
    SELECT user,host FROM user;
    exit

10 - Conectando no MySQL Server utilizando o MySQL Workbench

    #OBSERVAÇÃO IMPORTANTE: após a conexão com o MySQL Server utilizando MySQL Workbench somente o
    #Banco de Dados Sys (Sistema) é mostrado em Esquemas, os demais Banco de Dados utilizados pelo
    #MySQL Server não são mostrados por motivo de segurança.

    #Link para download do MySQL Workbench: https://dev.mysql.com/downloads/workbench/

    #conectando com o usuário Root Remoto do MySQL no Workbench
    MySQL Connections: +
	    Connection Name: wsvaamonde
	    Connection Method: Standard (TCP/IP)
	    Parameters:
		    Hostname: 10.26.44.210 (alterar o endereço IPv4 do seu servidor)
		    Port: 3306
		    Username: root
		    Password:
			    Store in Keychain
				    Password: 123@senac (alterar a senha do usuário root do seu servidor)
			    <OK>
	    <Test Connection>
		    <OK>
	    <OK>

11 - Integrando o MySQL Server com o Visual Studio Code VSCode

    #OBSERVAÇÃO IMPORTANTE: CONFORME COMENTADO NO VÍDEO E MOSTRADO, NA EXTENSÃO DO VSCODE NÃO APARECE
    #NENHUM BANCO DE DADOS PADRÃO DO MYSQL SERVER, SOMENTE OS BANCOS DE DADOS CRIADOS PELO USUÁRIO,
    #POR MOTIVO DE SEGURANÇA.

    #instalando a Extensão do MySQL Server
    VSCode
	    Extensões
		    Pesquisar
			    MySQL (Database manager for MySQL/MariaDB, PostgreSQL, SQLite, Redis and ElasticSearch)
				    Instalar

    #configurando a conexão com o MySQL Server
    VSCode
	    Database
		    <Create Connection>
			    Name: UbuntuServer
			    Server Type:
				    MySQL
					    Host: 172.16.1.20 (alterar o endereço IPv4 do seu servidor)
					    Port: 3306
					    Username: root
					    Password: pti@2018 (alterar a senha do usuário root do seu servidor)
			    <Save>
