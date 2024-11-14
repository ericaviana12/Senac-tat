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

#02_ Instalando as Dependência do Docker CE no Linux Mint

#instalação das dependências básicas do Docker CE
#opção da contra barra (\): criar uma quebra de linha no terminal

```
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg-agent
```

____________________

#03_ Adicionando a Chave GPG do Docker CE no Linux Mint

#ADICIONANDO AS CHAVES DO REPOSITÓRIO NO LINUX MINT 20.x
#opções do comando curl: -f (fail), -s (silent), -S (show-error), -L (location)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

```

#ADICIONANDO AS CHAVES DO REPOSITÓRIO NO LINUX MINT 21.x
#opções do comando wget: -q (quiet)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador >: Redireciona a saída padrão (STDOUT)
#opção do redirecionador 2>&1: Conecta a saída de erro na saída padrão

```
wget -q https://download.docker.com/linux/ubuntu/gpg 
cat gpg | gpg --dearmor | sudo tee /usr/share/keyrings/docker-ce.gpg > /dev/null 2>&1
```

____________________

#04_ Adicionando o Repositório do Docker CE no Linux Mint

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 20.x

```
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
```

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 21.x

```
sudo add-apt-repository "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-ce.gpg] https://download.docker.com/linux/ubuntu jammy stable"
```

____________________

#05_ Atualizando as Lista do Apt com o novo Repositório do Docker CE no Linux Mint

#atualizando as lista do apt com o novo repositório do Docker

```
sudo apt update
```

____________________

#06_ Instalando o Docker CE e suas Dependências no Linux Mint

#instalando o Docker CE e Compose

```
sudo apt install docker-ce docker-compose git vim python2 python3
```

OBSERVAÇÃO IMPORTANTE: a versão do Docker-Compose utilizando o Sources List do Docker-CE está
desatualizada em relação ao projeto do Github: https://github.com/docker/compose, é recomendado
baixar o Binário do projeto e atualizar a versão no Linux Mint com o procedimento abaixo (NÃO
COMENTADO NO VÍDEO)

#removendo o Docker Compose
#opção do comando apt: purgue (remove --purge packages)

```
sudo apt purge docker-compose
```

#baixando o Docker Compose do Projeto do Github
#opção do comando curl: -S (show-error), -L (location), -o (output) (Build 2.24.x 11/12/2023)

```
sudo curl -SL https://github.com/docker/compose/releases/download/v2.24.0-birthday.10/docker-compose-linux-x86_64 -o /usr/bin/docker-compose
```

#alterando as permissões do Binário do Docker Compose	
#opção do comando chmod: -v (verbose), 755 (User=RWX,Group-R-X,Other-R-X)

```
sudo chmod -v 755 /usr/bin/docker-compose
```

____________________

#07_ Adicionando o Usuário Local no Grupo do Docker CE no Linux Mint

#adicionando o seu usuário no grupo do Docker
#opções do comando usermod: -a (append), -G (groups), $USER (environment variable)

```
sudo usermod -a -G docker $USER
```

#fazendo login em um novo grupo do Docker

```
newgrp docker
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

#08_ Verificando o serviço do Docker CE, Docker Compose, Versões e Informações

#verificando o status do serviço do Docker CE

```
sudo systemctl status docker
```

#verificando as versões do Docker CE e Compose

```
docker version
docker-compose version
```

#verificando informações detalhadas do Docker CE

```
docker info
docker system info
```

____________________

#09_ Iniciando um Container de Teste do Docker CE

#pesquisando e iniciando o container de Hello World do Docker CE
#opção do comando docker: search (Search the Docker Hub for images), run (Run a command in a new container)
#link de consulta do Docker Hub: https://hub.docker.com/

```
docker search hello-world
docker run hello-world
```

____________________

#10_ Iniciando um Container de Teste do Ubuntu Bash no Docker CE

#pesquisando e iniciando o container do Ubuntu do Docker CE
#opções do comando docker: search (Search the Docker Hub for images), run (Run a command in 
a new container), -i (interactive), -t (tty)

```
docker search ubuntu
docker run -it ubuntu bash
```
	
#executar o comandos básicos de Linux dentro do container

```
cat /etc/os-release
```

```
apt update
```

```
apt install net-tools iputils-ping
```

```
ifconfig
```

```
exit
```

____________________

#11_ Verificando as Imagens dos Container no Docker CE

#opção do comando docker: images (List images container on system), ps (List containers)

```
docker images
docker ps
```

____________________

#12_ Limpando todas as Imagens, Container, Volumes e Redes no Docker CE

#opção do comando docker: system (manager docker), prune (Remove unused data), rmi (Remove 
one or more images), images (List images container on system)

```
docker system prune
docker rmi hello-world:latest
docker rmi ubuntu:latest
docker images
```
