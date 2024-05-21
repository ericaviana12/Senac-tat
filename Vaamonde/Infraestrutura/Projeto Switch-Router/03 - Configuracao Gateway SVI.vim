#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

!03 - Configuracao Gateway SVI

---

!Automação da configuração do Switch 2

!Acessando o modo EXEC Privilegiado
enable

	!Acessando o modo de Configuração Global de comandos
	configure terminal
	
	!Configuração do Gateway padrão IPv4 no Switch
	ip default-gateway 192.168.1.254
  
	!Configuração da Interface Virtual do Switch SVI
	interface vlan 1
		
		!Configuração da Descrição da Interface Virtual
		description Interface de Gerenciamento do Switch sw-01
		
		!Configuração do Endereçamento IPv4 da Interface Virtual
		ip address 192.168.1.251 255.255.255.0
		
		!Inicializando a Interface Virtual do Switch
		no shutdown
		
		!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
		end

!Salvando as configurações da memória RAM para a memória NVRAM
write
	
!Visualizando as configurações da memória RAM
show running-config

!Visualizando as configurações das VLAN padrão do Switch
show vlan brief

!Visualizando as configurações das interfaces e portas de rede do Switch
show ip interface brief
