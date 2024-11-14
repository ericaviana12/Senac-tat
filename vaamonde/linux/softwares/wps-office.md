#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

____________________

#00_ Verificando as Informações do Sistema Operacional Linux Mint

Terminal: Ctrl + Alt + T

OBSERVAÇÃO IMPORTANTE: Linux Mint 20.x é derivado do Ubuntu Desktop 20.04.x Focal Fossa 
OBSERVAÇÃO IMPORTANTE: Linux Mint 21.x é derivado do Ubuntu Desktop 22.04.x Jammy Jellyfish

```
sudo cat /etc/os-release
sudo cat /etc/lsb-release
sudo localectl
```

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

#02_ Download do WPS Office 2019 no Linux Mint

 - Site: https://www.wps.com/pt-BR/office/linux/
	Pacote: .DEB

____________________

#03_ Instalando o WPS Office 2019 no Linux Mint

 - 01_ Na pasta de Download, clicar duas vezes no Instalador do WPS Office 2019;
 - 02_ Seguir os procedimentos na tela;
 - 03_ Menu, WPS Office
 - 04_ End User License Agreement for WPS Office: Have read and agreed to Kingsoft Office Software: YES <I Confirm>

____________________

#04_ Instalando o pacote de Tradução e Dicionário PT-BR do WPS Office 2019 no Linux Mint

 - 01_ Primeira etapa: Acessar o Terminal
	Atalho: Ctrl + Alt + T

 - 02_ Segunda etapa.: Instalar o software Git:

```
sudo apt update
sudo apt install git vim python2 python3
```

 - 03_ Terceira etapa: Clonar o projeto do Github

```
git clone https://github.com/vaamonde/pt_br-wpsoffice
```

 - 04_ Quarta etapa..: Acessar o repositório clonado localmente

```
cd pt_br-wpsoffice/
```

 - 05_ Quinta etapa..: Executar o script de atualização do Tradutor e Dicionário

```
bash install.sh
```

 - 06_ Sexta etapa...: Abrir o WPS Office e verificar se a tradução está funcionando

```
wps
```

 - 07_ Sétima etapa..: Procedimentos para corrigir a Falha de Acentuação do WPS Office


```
	_ Abrir o WPS Office 2019;
	_ na tela inicial do WPS Office clicar em: Global Settings (Definições Globais);
	_ selecionar: settings (Definições);
	_ em Settings Other clicar em: Settings Other Options Popup Component;
	_ alterar para: Multi-Module Mode <OK>;
	_ na tela de Restart WPS to see changes clicar em: <OK>;
	_ Fechar o WPS Office e testar a acentuação no Write e Spreadsheets;
	_ na tela de Verificação do Sistema marque a opção: Não relatar novamente e <Close>
```
