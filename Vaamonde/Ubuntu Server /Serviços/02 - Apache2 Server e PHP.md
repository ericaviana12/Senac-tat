01 - Instalando o Apache2 Server e PHP 8.x

    #atualizando as listas do Apt
    sudo apt update

    #instalando as dependências do Apache2 Server
    sudo apt install git vim perl python2 python3 unzip ghostscript zlib1g zlib1g-dev apt-transport-https

    #instalando o Apache2 Server e PHP 8.x
    #opção da contra barra (\): criar uma quebra de linha no terminal
    sudo apt install apache2 apache2-utils apache2-bin apache2-data php8.1 php8.1-cli php8.1-common \
    php8.1-mysql php8.1-opcache php8.1-readline php8.1-common php8.1-bcmath php8.1-curl php8.1-intl \
    php8.1-mbstring php8.1-xml php8.1-zip php8.1-soap php-imagick php-json libapache2-mod-php libapr1 \
    libapache2-mod-php8.1 libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap

02 - Verificando o Serviço e Versão do Apache2 Server e do PHP

    #verificando o serviço do Apache2 Server
    sudo systemctl status apache2
    sudo systemctl restart apache2
    sudo systemctl reload apache2
    sudo systemctl stop apache2
    sudo systemctl start apache2

    #analisando os Log's e mensagens de erro do Servidor do Apache2 (NÃO COMENTADO NO VÍDEO)
    #opção do comando journalctl: x (catalog), e (pager-end), u (unit)
    sudo journalctl -xeu apache2

    #verificando as versões do Apache2 Server e do PHP
    #opção do comando apache2ctl: -V (version)
    #opção do comando php: -v (version)
    sudo apache2ctl -V
    sudo php -v

03 - Verificando a Porta de Conexão do Apache2 Server

    #OBSERVAÇÃO IMPORTANTE: no Ubuntu Server as Regras de Firewall utilizando o comando: 
    #iptables ou: ufw está desabilitado por padrão (INACTIVE), caso você tenha habilitado 
    #algum recurso de Firewall é necessário fazer a liberação do Fluxo de Entrada, Porta 
    #e Protocolo TCP do Serviço corresponde nas tabelas do firewall e testar a conexão.

    #opção do comando lsof: -n (network number), -P (port number), -i (list IP Address), -s (alone directs)
    sudo lsof -nP -iTCP:'80' -sTCP:LISTEN

04 - Localização dos Arquivos de Configuração do Apache2 Server e do PHP 8.x

    /etc/apache2/                  <-- Diretório de configuração do Apache 2 Server
    /etc/apache2/apache2.conf      <-- Arquivo de configuração do Apache 2 Server
    /etc/apache2/sites-available/  <-- Diretório padrão dos Sites Acessíveis do Apache 2 Server
    /etc/apache2/conf-available/   <-- Diretório padrão das Configurações Acessíveis do Apache 2 Server
    /etc/php/                      <-- Diretório de configuração do PHP 7.x ou 8.x
    /etc/php/8.1/apache2/php.ini   <-- Arquivo de configuração do PHP 8.x do Apache 2 Server
    /var/www/html/                 <-- Diretório padrão das Hospedagem de Site do Apache 2 Server
    /var/log/apache2/              <-- Diretório padrão dos Logs do Apache 2 Server

05 - Adicionando o Usuário Local no Grupo Padrão do Apache2 Server

    #adicionando o seu usuário no grupo do Apache2
    #opções do comando usermod: -a (append), -G (groups), $USER (environment variable)
    #OBSERVAÇÃO IMPORTANTE: você pode substituir a variável de ambiente $USER pelo
    #nome do usuário existente no sistema.
    sudo usermod -a -G www-data $USER

    #fazendo login em um novo grupo do Apache2
    newgrp www-data

    #verificando os identificadores de usuário e grupos
    id

    #recomendo fazer logout do usuário para testar as permissões de grupos
    #OBSERVAÇÃO: você pode utilizar o comando: exit ou tecla de atalho: Ctrl+D
    exit

    #OBSERVAÇÃO IMPORTANTE: caso a conexão SSH trave, utilize os caracteres de escape para 
    #finalizar conexões SSH.
    #caracteres: ~ (til) e . (ponto)
    ~.

06 - Criando um diretório de Teste do HTML e PHP no Apache2 Server

    #acessando o diretório padrão dos Sites do Apache2 Server (DocumentRoot)
    cd /var/www/html

	    #criando o diretório de teste das páginas HTML e PHP
	    #opção do comando mkdir: -v (verbose)
	    sudo mkdir -v teste
	
	    #alterando as permissões do diretório de teste
	    #opção do comando chmod: -R (recursive), -v (verbose), 2775 (Set-GID=2,User=RWX,Group=RWS,Other=R-X)
	    sudo chmod -Rv 2775 teste/
	
	    #alterando o dono e grupo do diretório de teste
	    #opção do comando chown: -R (recursive), -v (verbose), root (User), . (separate), www-date (group)
	    sudo chown -Rv root.www-data teste/
	
	    #acessando o diretório criado de teste
	    cd teste

07 - Criando páginas HTML e PHP para testar o Apache2 Server

    #OBSERVAÇÃO IMPORTANTE: nesse exemplo vamos editar os arquivos teste.html, teste.php e phpinfo.php 
    #utilizando o Editor de Texto em Linha de Comando Vim.

    #OBSERVAÇÃO IMPORTANTE: no Microsoft Windows utilizando o Powershell no processo de copiar e colar
    #o código HTML ou PHP ele desconfigura o código, recomendo no Windows utilizar o software PuTTY 
    #para editar os códigos ou copiar e colar. No Linux Mint e macOS essa falha não acontece.

    #OBSERVAÇÃO: tanto no Microsoft Windows como no GNU/Linux (Linux Mint, Ubuntu Desktop, etc) ou no
    #macOS recomendo sempre utilizar o Editor de Texto em Modo Gráfico IDE Microsoft Visual Studio, por
    #padrão ele já entende toda a codificação HTML, PHP, JavaScript, JSON, etc..., facilitando a criação
    #e modificação dos arquivos desse curso.

    #criando o arquivo em HTML
    sudo vim seu_nome.html (erica.html)
    INSERT

---

    <!-- Início do código HTML: declaração do tipo de arquivo que será enviado para a navegador -->
    <!DOCTYPE html>
	    <!-- Tag HTML: Define a raiz de um documento HTML -->
	    <html lang="pt-br">
		    <!-- Tag HEAD: Define um cabeçalho para um documento ou seção -->
		    <head>
			    <!-- Tag TITLE: Define um título para o documento -->
			    <title>Teste da Linguagem HTML</title>
			    <!-- Tag META: Define metadados sobre um documento HTML -->
			    <meta charset="utf-8">
		    <!-- Fechamento da Tag: HEAD -->
		    </head>
		    <!-- Tag BODY: Define o corpo do documento -->
		    <body>
			    <!-- Tag H1: Define títulos HTML -->
			    <!-- Tag BR: Define uma única quebra de linha -->
			    <h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>
			    Autor: Erica Viana<br>
			    Editado por: SEU NOME AQUI<br>
			    <!-- Tag: A Define um hiperlink -->
			    LinkedIn: <a href="https://br.linkedin.com/in/erica-viana-938a37bb">Erica Viana</a><br>
			    GitHub: <a href="https://github.com/ericaviana12">Erica Viana</a><br>
		    <!-- Fechamento da Tag: BODY -->
		    </body>
	    <!-- Fechamento da Tag: HTML -->
	    </html>

---

    #salvar e sair do arquivo
    ESC SHIFT :x <Enter>

    #criando o arquivo em PHP
    sudo vim seu_nome.php (erica.php)
    INSERT

---

    <!DOCTYPE html>
	    <html lang="pt-br">
		    <head>
			    <title>Teste da Linguagem PHP</title>
			    <meta charset="utf-8">
		    </head>
		    <body>
			    <!-- Início do script PHP: ?php -->
			    <?php 
				    // Função ECHO: Imprimir uma ou mais strings na saída padrão
				    echo '<h1>Teste da Linguagem HTML (HyperText Markup Language)</h1>';
				    echo 'Autor: Erica Viana<br>';
				    echo 'Editado por: SEU NOME AQUI<br>';
				    echo 'LinkedIn: https://br.linkedin.com/in/erica-viana-938a37bb<br>';
				    echo 'GitHub: https://github.com/ericaviana12<br>'; 
			    // Fechamento do Script PHP
			    ?>
		    </body>
	    </html>

---

    #salvar e sair do arquivo
    ESC SHIFT :x <Enter>

    #criando o arquivo de informações do PHP
    sudo vim phpinfo.php
    INSERT

---

    <?php
	    // Função do PHP para gerar a página de documentação e parâmetros do PHP
	    phpinfo(); 
    ?>

---

    #salvar e sair do arquivo
    ESC SHIFT :x <Enter>

08 - Testando o Apache2 Server e o PHP no navegador

    #utilizar os navegadores para testar suas páginas
    firefox ou google chrome: http://endereço_ipv4_ubuntuserver
    firefox ou google chrome: http://endereço_ipv4_ubuntuserver/teste/
