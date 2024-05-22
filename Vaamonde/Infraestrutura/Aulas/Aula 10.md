Objetivo da aula de hoje: 16/05/2024 CONTINUAÇÃO

#01_ Material disponível no Github e na Rede:

	a) Infraestrutura: https://github.com/vaamonde/infraestrutura
	b) Cisco CCNA: https://github.com/vaamonde/ccna-v7-200-301
	c) Rede: T:\Publica\!!!!RobsonVaamonde\Infraestrutura

#02_ Material da Terceira Aula

	a) Link: https://github.com/vaamonde/infraestrutura/blob/main/pdf/InfraestruturaDeRedes-03.pdf

#03_ Abrir o projeto da última aula para estudar os tópicos.

	a) CONFIGURAÇÃO DOS SERVIÇOS DE REDE;
	SMTP e POP3: https://github.com/vaamonde/ccna-v7-200-301/blob/master/etapas/Etapa-015-ConfiguracaoSMTP-POP3.txt
	b) https://github.com/vaamonde/ccna-v7-200-301/blob/master/etapas/Etapa-012-ConfiguracaoBaseCenario-A.txt
	
#04_ Serviços Implementados:

	DHCP Server IPv4	OK
	DNS Server IPv4		OK
	TFTP Server IPv4	OK
	HTTP HTTPS Server	OK
	FTP Server		OK
	SMTP e POP3 Server	OK
	
#05_ Configuração dos Switches L2 2960 e L3 3560

	a) Configuração Base;
	b) Configuracão das Linhas Virtuais VTY;
	c) Configuração do SVI (Switch Virtual Interface);
	d) Configuracão do SSH (Acesso Remoto);
	e) Testar os Pings com todos os Equipamentos;
	f) Acessar Remoto via SSH os Equipamentos;
	g) Fazer o Backup via TFTP no Servidor final .3.1;
	h) copy running-config tftp:
	i) Fazer a Criação dos Ponteiros Tipo A no DNS dos equipamentos:
		i)   DNS: sw-03 - IP: 192.168.3.250
		ii)  DNS: sw-04 - IP: 192.168.3.251
		iii) DNS: sw-05 - IP: 192.168.3.254
