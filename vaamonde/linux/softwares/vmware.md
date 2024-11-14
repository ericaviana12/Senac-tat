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
```

____________________

#02_ Download do VMware Workstation Pro 17 (Build 17.5.0 26/11/2023)

 - Link: https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html
Versão: Workstation 17 Pro for Linux

____________________

#03_ Alterando as Permissões de Execução do Binário do VMware Workstation Pro

 - 01_ Acessar o diretório de Download;
 - 02_ Clicar com o Botão direito do mouse no binário do VMware-Workstation-Full-*.bundle;
 - 03_ No Menu selecionar o opção: Propriedade;
 - 04_ Acessar a aba: Permissões;
 - 05_ Clicar na opção: Permitir execução do arquivo como um programa.
 - Fechar

____________________

#04_ Instalando o VMware Workstation Pro no Linux Mint

 - 01_ Na pasta de Download, clicar com o botão direito do mouse e selecionar: Abrir no Terminal;
 - 02_ Digitar o comando: sudo ./VMware-Workstation-Full-*.bundle
 - 03_ Digitar a senha do seu usuário e aguardar a finalização da instalação.

____________________

#05_ Configuração básica do VMware Workstation Pro no Linux Mint

 - 01_ Na tela de License do VMware Workstation marque a opção: I accept the terms in the license agreement. <Next>
 - 02_ Na tela de License do VMware Workstation marque a opção: I accept the terms in the license agreement. <Next>
 - 03_ Na tela de Update marque a opção: Yes <Next>
 - 04_ Na tela de Experience marque a opção: Yes <next>
 - 05_ Na tela de License Key marque a opção: I want to try VMware Workstation 16 for 30 days: <Finish>
 - 06_ Na tela de autenticação, digite a senha do seu usuário e clique em: <Autenticar>
 - 07_ Na tela de Information, clique em: OK
