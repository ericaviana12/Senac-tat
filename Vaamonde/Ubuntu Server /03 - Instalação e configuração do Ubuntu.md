| Iniciando a Instalação do Ubuntu Server 22.04.x LTS (localizar a ISO) |
| :--- |

01. Selecionar a Máquina Virtual: senac 
<Iniciar>

02. VirtualBOX VM	
	DVD: <Outro>
	LOCALIZAR A IMAGEM DA ISO DO UBUNTU SERVER 22.04.x LTS
<Montar e Tentar Novo Boot>

| Instalação e Configuração do Ubuntu Server 22.04.x LTS |
| :--- |

01. *Try or Install Ubuntu Server
<Enter>

02. Use UP, DOWN and ENTER keys to select your language
	English (recomendado utilizar sempre a opção em Inglês)
<Enter>

03. Keyboard configuration
	Layout: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
	Variant: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
<Done>

04. Choose type of install
	(X) Ubuntu Server (DEFAULT - Selecionado)
	( ) Ubuntu Server (minimized)
	Additional options
		[ ] Search for third-party drivers
<Done>

05. Network connections
	enp0s3 eth (o nome lógico da placa de rede muda de equipamento para equipamento)
	DHCPv4 172.16.1.XXX/24 (altere conforme a sua necessidade)
	OBSERVAÇÃO IMPORTANTE: VERIFICAR O ENDEREÇO IPv4 QUE VOCÊ ESTÁ USANDO NA SUA REDE 
	INTERNA PARA ADAPTAR NO SEU CENÁRIO.
<Done>

06. Configure proxy
	Proxy address: (Default)
<Done>

07. Configure Ubuntu archive mirror
	Mirror: http://br.archive.ubuntu.com/ubuntu
	OBSERVAÇÃO IMPORTANTE: CASO QUEIRA TROCAR O MIRROR DO UBUNTU DO BRASIL PARA O
	OFICIAL NO US, SUBSTITUA A URL DE: http://br.archive.ubuntu.com/ubuntu PARA A
	URL: http://us.archive.ubuntu.com/ubuntu
<Done>

08. 

09. Guided storage configuration
	(X) Use an entire disk (Default)
		[VBOX_HARDISK local disk 50.000G]
		(X) Set up this disk as an LVM group (Default)
<Done>

10. Storage configuration
	USED DEVICES
		ubuntu-lv	new, to be formatted as ext4, mounted at /	24G <Enter>
			Edit <Enter>
				Name: ubuntu-lv
				Size (max 47.996G): 47.996G
				Format: ext4
				Mount: /
			<Save>
<Done>
	Confirm destructive action
<Continue>

11. Profile setup
	OBSERVAÇÃO: ALTERAR OS DADOS DO NOME DO SERVIDOR, USUÁRIO E SENHA PARA O SEU CENÁRIO.
	Your name: Erica Viana <Tab>
	Your server's name: wserica <Tab>
	Pick a username: senac <Tab>
	Choose a passwords: 123@senac <Tab>
	Confirm your passwords: 123@senac
<Done>

12. Upgrade to Ubuntu Pro
	(X) Skip Ubuntu Pro setup for now
<Continue>

13. SSH Setup
	Install OpenSSH server: ON (Habilitar) <Space>
	Import SSH identity: No (Default)
<Done>

14. Featured Server Snaps
<Done>

15. Install complete!
<Reboot Now>

16. Please remove the installation medium, then press ENTER:
<Enter>

| Acessando o Ubuntu Server pela primeira vez |
| :--- |

Aguardar a inicialização total do Ubuntu Server, no final serão geradas várias chaves de autenticação do SSH Server, pressione para aparecer a tela de login.

01. Tela de Login do Ubuntu Server
	wserica login: senac <Enter> (altere para o seu usuário)
	Password: 123@senac <Enter> (altere para o seu usuário)| Configurações da Máquina Virtual senac |
| :--- |

01. Selecionar a Máquina Virtual: senac
<Configurações>

02. Sistema
	Placa-Mãe
		Recurso Estendidos
			Relógio da máquina retorno hora UTC: OFF (Desabilitar)
	Processador
		Recursos Estendidos: Habilitar PAE/NX
		                     Habilitar VT-x/AMD-v Aninhado 

03. Monitor
	Tela (S)
		Memória de Vídeo: 128MB
		Recursos Estendidos: Habilitar Aceleração 3D: ON (Habilitar)

04. Áudio
	Habilitar Áudio: OFF (Desabilitar)

05. Rede
	Adaptador 1 (LAN)
		Habilitar Placa de Rede: ON (Habilitar)
		Conectado a: Placa em modo Bridge
		Nome: Intel(R) Ethernet Connection (Placa de Rede On-Board)
		OBSERVAÇÃO: VERIFIQUE QUAL PLACA DE REDE VOCÊ ESTÁ USANDO NO SEU EQUIPAMENTO
		QUE ESTÁ CONECTADO NA SUA REDE LOCAL, PODE SER PLACA DE REDE CABEADA OU PLACA
		SEM-FIO (RECOMENDO SEMPRE PLACA DE REDE CABEADA, MELHOR DESEMPENHO).
<OK>

| Iniciando a Instalação do Ubuntu Server 22.04.x LTS (localizar a ISO) |
| :--- |

01. Selecionar a Máquina Virtual: senac 
<Iniciar>

02. VirtualBOX VM	
	DVD: <Outro>
	LOCALIZAR A IMAGEM DA ISO DO UBUNTU SERVER 22.04.x LTS
<Montar e Tentar Novo Boot>

| Instalação e Configuração do Ubuntu Server 22.04.x LTS |
| :--- |

01. *Try or Install Ubuntu Server
<Enter>

02. Use UP, DOWN and ENTER keys to select your language
	English (recomendado utilizar sempre a opção em Inglês)
<Enter>

03. Keyboard configuration
	Layout: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
	Variant: [English (US)] ou [Portuguese (Brazil)] (altere conforme a sua necessidade)
<Done>

04. Choose type of install
	(X) Ubuntu Server (DEFAULT - Selecionado)
	( ) Ubuntu Server (minimized)
	Additional options
		[ ] Search for third-party drivers
<Done>

05. Network connections
	enp0s3 eth (o nome lógico da placa de rede muda de equipamento para equipamento)
	DHCPv4 172.16.1.XXX/24 (altere conforme a sua necessidade)
	OBSERVAÇÃO IMPORTANTE: VERIFICAR O ENDEREÇO IPv4 QUE VOCÊ ESTÁ USANDO NA SUA REDE 
	INTERNA PARA ADAPTAR NO SEU CENÁRIO.
<Done>

06. Configure proxy
	Proxy address: (Default)
<Done>

07. Configure Ubuntu archive mirror
	Mirror: http://br.archive.ubuntu.com/ubuntu
	OBSERVAÇÃO IMPORTANTE: CASO QUEIRA TROCAR O MIRROR DO UBUNTU DO BRASIL PARA O
	OFICIAL NO US, SUBSTITUA A URL DE: http://br.archive.ubuntu.com/ubuntu PARA A
	URL: http://us.archive.ubuntu.com/ubuntu
<Done>

08. 

09. Guided storage configuration
	(X) Use an entire disk (Default)
		[VBOX_HARDISK local disk 50.000G]
		(X) Set up this disk as an LVM group (Default)
<Done>

10. Storage configuration
	USED DEVICES
		ubuntu-lv	new, to be formatted as ext4, mounted at /	24G <Enter>
			Edit <Enter>
				Name: ubuntu-lv
				Size (max 47.996G): 47.996G
				Format: ext4
				Mount: /
			<Save>
<Done>
	Confirm destructive action
<Continue>

11. Profile setup
	OBSERVAÇÃO: ALTERAR OS DADOS DO NOME DO SERVIDOR, USUÁRIO E SENHA PARA O SEU CENÁRIO.
	Your name: Erica Viana <Tab>
	Your server's name: wserica <Tab>
	Pick a username: senac <Tab>
	Choose a passwords: 123@senac <Tab>
	Confirm your passwords: 123@senac
<Done>

12. Upgrade to Ubuntu Pro
	(X) Skip Ubuntu Pro setup for now
<Continue>

13. SSH Setup
	Install OpenSSH server: ON (Habilitar) <Space>
	Import SSH identity: No (Default)
<Done>

14. Featured Server Snaps
<Done>

15. Install complete!
<Reboot Now>

16. Please remove the installation medium, then press ENTER:
<Enter>

| Acessando o Ubuntu Server pela primeira vez |
| :--- |

Aguardar a inicialização total do Ubuntu Server, no final serão geradas várias chaves de autenticação do SSH Server, pressione para aparecer a tela de login.

01. Tela de Login do Ubuntu Server
	wserica login: senac <Enter> (altere para o seu usuário)
	Password: 123@senac <Enter> (altere para o seu usuário)
