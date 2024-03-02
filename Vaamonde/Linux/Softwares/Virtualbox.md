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

#verificando informações de hardware e processador
#opções do comando inxi: -C (cpu), -M (machine), -S (system), -f (flags), -xxx (extra 3)

```
sudo inxi -CMSfxxx
sudo lscpu
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
sudo apt clean
```

____________________

#02_ Adicionando o Repositório do Oracle VirtualBOX no Linux Mint

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 20.x
#opção do comando sh: -c (Read commands from the command_string operand in‐stead of from the standard input)
#opção do redirecionador >>: Redireciona a saída padrão, anexando

```
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian focal contrib" >> /etc/apt/sources.list.d/virtualbox.list'
```

#ADICIONANDO O REPOSITÓRIO NO LINUX MINT 21.x
#opção do comando sh: -c (Read commands from the command_string operand in‐stead of from the standard input)
#opção do redirecionador >>: Redireciona a saída padrão, anexando

```
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/virtualbox.gpg] https://download.virtualbox.org/virtualbox/debian jammy contrib" >> /etc/apt/sources.list.d/virtualbox.list'
```

____________________

#03_ Baixando e Instalando as Chaves de Autenticação GPG do Oracle VirtualBOX no Linux Mint

#ADICIONANDO AS CHAVES DO REPOSITÓRIO NO LINUX MINT 20.x
#opções do comando wget: -q (quiet), -O (output-document), - (file name)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando

```
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
```

#ADICIONANDO AS CHAVES DO REPOSITÓRIO NO LINUX MINT 21.x
#opções do comando wget: -q (quiet)
#opção do redirecionador |: Conecta a saída padrão com a entrada padrão de outro comando
#opção do redirecionador >: Redireciona a saída padrão (STDOUT)
#opção do redirecionador 2>&1: Conecta a saída de erro na saída padrão

```
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc
cat oracle_vbox_2016.asc | gpg --dearmor | sudo tee /usr/share/keyrings/virtualbox.gpg > /dev/null 2>&1
```

____________________

#04_ Instalando o Oracle VirtualBOX no Linux Mint

#OBSERVAÇÃO IMPORTANTE: recomendo fazer a instalação da nova versão do VirtualBOX 7.0.x

#atualizando as lista do Apt com o novo repositório do VirtualBOX

```
sudo apt update
```

#OBSERVAÇÃO IMPORTANTE: UTILIZAR SOMENTE A VERSÃO DO VIRTUALBOX 6.1.X SE FOR REALMENTE
#NECESSÁRIO, EM ALGUNS CASOS A VERSÃO ANTIGA RESOLVER PROBLEMAS DE SOFTWARE OU SISTEMA
#OPERACIONAL OBSOLETOS, HOJE EM DIA NÃO É MAIS INDICADO USAR ESSA VERSÃO.

#INSTALANDO O VIRTUALBOX VERSÃO 6.1.x (NÃO RECOMENDADO MAIS A SUA INSTALAÇÃO)

```
sudo apt install virtualbox-6.1 cpu-checker libvirt-clients git vim python2 python3
```

#INSTALANDO O VIRTUALBOX VERSÃO 7.0.x (RECOMENDADO A SUA INSTALAÇÃO)

```
sudo apt install virtualbox-7.0 cpu-checker libvirt-clients git vim python2 python3
```

____________________

#05_ Verificando as Informações do suporte a Virtualização no Linux Mint

#verificando as informações de KVM (Kernel Virtual Machine)

```
sudo kvm-ok
```

#verificando as informações de validação do host da Biblioteca LibVirt

```
sudo virt-host-validate
```

#OBSERVAÇÃO IMPORTANTE: conforme relatos no Canal do YouTUBE do Bora para Prática, no Linux Mint versão 
#21.x é mostrado a seguinte mensagem de falha quando você utiliza o comando: sudo virt-host-validate.
#Conforme vários relatos nos fórum do Linux Mint e do Ubuntu esse erro está associado a versão do Cgroup
#utilizado no Ubuntu 22.04.x que é a base do Linux Mint 21.x. 

#LXC: Checking for cgroup 'freezer' controller support FAIL (Enable 'freezer' in kernel Kconfig file or 
#mount/enable cgroup controller in your system)

#QEMU: Checking for secure guest support: WARN (Unknown if this platform has Secure Guest support: essa
#mensagem faz referência ao suporte a processadores Intel com tecnologias VT-x e VT-d, caso a sua CPU não
#tenha suporte ao VT-d essa mensagem e apresentada, você pode ignorar essa mensagem.

#CORREÇÃO PARA O LINUX MINT 21.x REFERENTE AO ERRO DO FREEZER DO COMANDO: virt-host-validate

#editar o arquivo de configuração do Grub

```
sudo vim /etc/default/grub
```

```
	INSERT

		#alterar a linha 10 das configurações padrão do GRUB do Linux Mint de:
		GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
		
		#para:
		GRUB_CMDLINE_LINUX_DEFAULT="quiet splash systemd.unified_cgroup_hierarchy=0"
		
		#OBSERVAÇÃO IMPORTANTE: UTILIZAR AS OPÇÕES ABAIXO SOMENTE SE VOCÊ ESTÁ USANDO ESSES RECURSOS
		#NO LINUX MINT E SEU HARDWARE SUPORTA TAL TECNOLOGIA.

		#se estiver usando processadores Intel pode habilitar o IOMMU no GRUB adicionando a opção:
		GRUB_CMDLINE_LINUX_DEFAULT="quiet splash systemd.unified_cgroup_hierarchy=0 intel_iommu=on"
		
		#se estiver usando processadores AMD pode habilitar o IOMMU no GRUB adicionando a opção:
		GRUB_CMDLINE_LINUX_DEFAULT="quiet splash systemd.unified_cgroup_hierarchy=0 amd_iommu=on"
	
	#salvar e sair do arquivo
	ESC SHIFT :x <Enter>
```

#atualizar os arquivos de GRUB e reiniciar o computador

```
sudo update-grub
sudo reboot
```

#verificando novamente a validação da biblioteca LibVirt

```
sudo virt-host-validate
```

____________________

#06_ Atualizando o VirtualBOX 6.1.x para a versão nova versão 7.0.x

#OBSERVAÇÃO IMPORTANTE: executar esse procedimento somente se você instalou a versão
#do Virtualbox-6.1.x e queira atualizar para a versão do Virtualbox-7.0.x

#atualizar as lista do Apt, atualizar o sistema e instalar a versão 7.0.x

```
sudo apt update
sudo apt upgrade
sudo apt install virtualbox-7.0 cpu-checker libvirt-clients git vim python2 python3
```

#OBSERVAÇÃO IMPORTANTE: CASO O PROCEDIMENTO ANTERIOR NÃO FUNCIONE NO SEU LINUX MINT, 
#RECOMENDO FAZER A REMOÇÃO AUTOMÁTICA DO VIRTUALBOX-6.1 E DEPOIS INSTALAR A VERSÃO 
#7.0, UTILIZE OS SEGUINTES COMANDOS:

#atualizar as lista do Apt, atualizar o sistema, remover a versão 6.0.x e instalar a versão 7.0.x

```
sudo apt update
sudo apt upgrade
sudo apt purge virtualbox-6.1
sudo apt install virtualbox-7.0 cpu-checker libvirt-clients git vim python2 python3
```

____________________

```
#07_ Baixando e Instalando o Pacote de Extensões do Oracle VirtualBOX 7.0

OBSERVAÇÃO: PROCEDIMENTO É IGUAL NAS VERSÕES DO VIRTUALBOX 6.1.x E 7.0.x

Link para download: https://www.virtualbox.org/wiki/Downloads
	Opção: VirtualBox 7.x Oracle VM VirtualBox Extension Pack
	Clique em: All supported platforms

*Recomendo fazer a instalação do Pacote de Extensões do Oracle VirtualBOX via download do site Oficial.
*Após baixar o pacote, clicar duas vezes no mesmo e seguir os procedimentos na tela

<Instalar>
	Descer a barra de rolagem até o final
<Eu Concordo>
	Digite a senha do seu usuário clique em: <Autenticar>
```

____________________

#08_ Corrigindo a Falha do VirtualBOX 7.0 em relação ao erro: Failed to enumerate host USB devices

#adicionando o usuário no grupo do VirtualBOX Users
#opções do comando usermod: -a (append), -G (groups), $USER (variável de ambiente do nome do usuário)

```
sudo usermod -aG vboxusers $USER
```

#verificando se o usuário foi adicionado no grupo

```
sudo cat /etc/group | grep vbox
```

#recomendo reiniciar a máquina para testar se a falha foi resolvida

```
sudo reboot
```
