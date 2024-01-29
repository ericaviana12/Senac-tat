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

#01_ Verificando a quantidade de memória RAM no Linux Mint

Terminal: Ctrl + Alt + T

#opção do comando inxi: -m (memory), xxx (extra data)
sudo inxi -mxxx

#opção do comando free: -h (human)
sudo free -h

____________________

#02_ Desativando o Arquivo de Swapfile do Linux Mint

#opção do comando swapon: --show (Display a definable table of swap areas)
#opção do comando ls: -l (use a long listing format), -h (human-readable)
#opção do comando inxi: -Duxxx -D (disk), -u (uuid), -xxx (extra data levels)
#opção do coma do df: -h (human-readable)
sudo swapon --show
sudo ls -lh /swapfile
sudo df -h

#OPÇÃO DO INXI PARA O LINUX MINT 20.x
#opção do comando inxi: -Duxxx -D (disk), -u (uuid), -xxx (extra data levels)
sudo inxi -Duxxx

#OPÇÃO DO INXI PARA O LINUX MINT 21.x
#opção do comando inxi: -Duxxx -D (disk), -P (Partition), -xxx (extra data levels)
sudo inxi -DPxxx

#opção do comando swapoff: -v (verbose)
sudo swapoff -v /swapfile
sudo swapon --show

#Opção-01: Comentar a linha de configuração do Swapfile no arquivo fstab
sudo apt install vim smartmontools

sudo vim /etc/fstab
	INSERT
		#Comentar a linha do Swapfile (salvar e sair: Esc Shift: x)
		#swapfile	none	swap	sw	0	0
	ESC SHIFT :x <Enter>

OBSERVAÇÃO IMPORTANTE: SÓ UTILIZAR A SEGUNDA OPÇÃO SE FOR REALMENTE NECESSÁRIO
#Opção-02: Remover a linha de configuração do Swapfile no arquivo fstab
#OBSERVAÇÃO: utilizar essa opção somente se necessário, recomendo comentar a linha do 
#swapfile no arquivo fstab.
#opção do comando sed: -i (in-place), /^\ (início da lista + escape), /d (delete)
sudo sed -i ′/^\/swapfile/d′ /etc/fstab

#opção do comando rm: -v (verbose)
sudo ls -lh /swapfile
sudo rm -v /swapfile 

#Reiniciar o Linux Mint para verificar se o Swapfile foi removido.
sudo reboot

#Verificando as informações do Swapfile no Linux Mint
#opção do comando df: -h (human-readable)
sudo swapon --show
sudo df -h

#OPÇÃO DO INXI PARA O LINUX MINT 20.x
#opção do comando inxi: -Duxxx -D (disk), -u (uuid), -xxx (extra data levels)
sudo inxi -Duxxx

#OPÇÃO DO INXI PARA O LINUX MINT 21.x
#opção do comando inxi: -Duxxx -D (disk), -P (Partition), -xxx (extra data levels)
sudo inxi -DPxxx

____________________

#03_ Verificando o serviço do TRIM SSD ATA no Linux Mint

OBSERVAÇÃO IMPORTANTE: Um comando trim permite que um sistema operacional informe a uma	unidade 
de estado sólido quais blocos de dados não são mais considerados 'em uso' e, portanto, podem ser 
apagados internamente. O Trim foi introduzido logo após a introdução dos SSDs.

#opção do comando fdisk: -l (list)
#opção do comando smartctl: -a (all)
#opção do comando fstrim: -v (verbose)
sudo fdisk -l
sudo smartctl -a /dev/nvme0n1
sudo fstrim -v /home/vaamonde

#verificando o status do serviço do FSTRIM (padrão desativado: Active: inactive (dead))
sudo systemctl status fstrim

#verificando o status do serviçco do FSTRIM.TIMER (padrão ativado: Active: active (waiting))
sudo systemctl status fstrim.timer

____________________

#04_ Verificando o serviço de Suspender/Hibernação no Linux Mint

OBSERVAÇÃO IMPORTANTE: por padrão o serviço de hibernação está desativado no Linux Mint, para 
utilizar esse recurso é necessário utilizar o swapfile. A comunidade do Ubuntu recomenda usar
o software Userspace Software Suspend (uswsusp) para o gerenciamento da hibernação.

DIFERENÇAS ENTRE SUSPENDER E HIBERNAÇÃO: O modo “Hibernar” deixa seu notebook em um modo de 
baixo consumo, onde seu computador fica quase “desligado” para economizar energia ao máximo. 
Já o modo “Suspender” apenas desliga sua tela e deixa o computador suspenso temporariamente. 
Outra diferença entre os dois modos, está na hora de voltar ao trabalho.

#verificando o status do serviço do HIBERNATE.TARGET (padrão desativado: Active: inactive (dead))
sudo systemctl status hibernate.target 

#verificando o status do serviço do SUSPEND.TARGET (padrão desativado: Active: inactive (dead))
sudo systemctl status suspend.target 

#verificando o status do serviço do SUSPEND-THEN-HIBERNATE.TARGET (padrão desativado: Active: inactive (dead))
sudo systemctl status suspend-then-hibernate.target 

____________________

#05_ Limpeza do Cache da Memória RAM no Linux Mint

OBSERVAÇÃO IMPORTANTE: no vídeo eu não falo sobre a limpeza do cache da memória RAM do Linux Mint, 
em todos os sistemas operacionais encontramos caches que possuem arquivos indesejados que podem 
prejudicar o nosso sistema.

PAGE CACHE também chamado de Disk Cache é uma cópia de parte dos dados do disco, mantida na memória 
RAM, pelo sistema operacional.

DENTRIES a palavra “dentry” é uma abreviatura para “directory entry” (entrada de diretório), uma 
dentry é nada além de um componente específico no caminho para um arquivo a partir da raiz do 
sistema. Sua função é prover acesso a arquivos e diretórios.

INODES “inode” é abreviatura para “index node“. Em um sistema de arquivos Unix, um inode é uma 
estrutura de dados usada para representar um objeto do sistema de arquivos – qual seja um arquivo, 
um diretório etc.

BUFFERS memória usada temporariamente para armazenar dados em tráfego no sistema. Utilizando os 
exemplos de comandos demonstrados neste artigo podemos efetuar a limpeza de Inodes, cache de 
disco e File System no Linux de forma simples e rápida, sem necessidade de reiniciar o servidor.

#Limpando o Page Cache da Memória RAM
#opção do comando free: -m (mebi), -h (human)
#opção do comando sh: -c (command string)
sudo free -mh (coluna buffer/cache)
sudo sync; sudo sh -c 'echo 1 > /proc/sys/vm/drop_caches'
sudo free -mh

#Limpando o Dentries e Inodes da Memória RAM
#opção do comando free: -m (mebi), -h (human)
#opção do comando sh: -c (command string)
sudo free -mh (coluna buffer/cache)
sudo sync; sudo sh -c 'echo 2 > /proc/sys/vm/drop_caches'
sudo free -mh

#Limpando o Page Cache, Dentries e Inodes da Memória RAM
#opção do comando free: -m (mebi), -h (human)
#opção do comando sh: -c (command string)
sudo free -mh (coluna buffer/cache)
sudo sync; sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
sudo free -mh
