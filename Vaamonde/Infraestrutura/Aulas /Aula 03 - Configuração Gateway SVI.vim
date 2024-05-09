Etapa-003 - Configuração Gateway SVI

---

!Autor: Robson Vaamonde
!Procedimentos em TI: http://procedimentosemti.com.br
!Bora para Prática: http://boraparapratica.com.br
!Robson Vaamonde: http://vaamonde.com.br
!Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi
!Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica
!Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem
!YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica
!Data de criação: 18/04/2020
!Data de atualização: 09/08/2023
!Versão: 0.07
!Testado e homologado no Cisco Packet Tracer 7.3.x, 8.0.x, 8.1.x, 8.2.x e GNS3 2.2.x

!Acessando o modo EXEC Privilegiado
enable

	!Acessando o modo de Configuração Global de comandos
	configure terminal
	
	!Configuração do Gateway padrão IPv4 no Switch
	
	!DICA: configuração do Gateway IPv4 em Switch Layer 2 serve somente para acesso remoto 
	!(monitoramento/gerenciamento)
	!DICA: Switch Layer 3 o recurso de Gateway é utilizado tanto para acesso remoto ou para 
	!roteamento de redes/gateway utilizando principalmente VLAN (Virtual-LAN)
	
	!OBSERVAÇÃO: esse recurso é necessário para administração remota ou monitoramento do Switch 
	!Layer 2 ou Layer 3
	!OBSERVAÇÃO: existe a possibilidade da configuração do Gateway utilizando o endereço IPv6 em 
	!Switch Layer 2 ou Layer 3
	ip default-gateway 192.168.1.254
  
	!Configuração da Interface Virtual do Switch SVI (Switch Virtual Interface)
	
	!DICA: interfaces virtuais são criadas utilizando o recurso de VLAN (Virtual-LAN) do Switch 
	!Layer 2 ou Layer 3
	!DICA: é recomendado utilizar outra VLAN para o SVI, não é recomendado utilizar a VLAN padrão 
	!1 para essa finalidade
	
	!OBSERVAÇÃO: em Switch Layer 2 utilizamos o SVI somente para administração remota ou monitoramento
	!OBSERVAÇÃO: o SVI é necessário para o acesso remoto via Linhas Virtuais (VTY) utilizando os 
	!protocolos Telnet, SSH ou outro protocolo configurado.
	interface vlan 1
		
		!Configuração da Descrição da Interface Virtual VLAN-1
		
		!DICA: sempre utilizar o comando: description nas Interfaces para efeito de documentação
		
		!OBSERVAÇÃO: documentação de Interfaces facilita o processo de identificação e função dela 
		!na topologia de rede
		description Interface de Gerenciamento do Switch SW-L2-2960-1
		
		!Configuração do Endereçamento IPv4 da Interface Virtual VLAN-1
		
		!DICA: o endereço IPv4 deve ser da mesma faixa de rede do Gateway Padrão utilizado na rede
		!DICA: é recomendado que os endereços de rede dos Switches sejam de redes diferentes dos 
		!desktops
		
		!OBSERVAÇÃO: configuração do endereço IPv4 deve ser: IP + Máscara de Rede Completa, não utilizar 
		!CIDR (Classes Inter-Domain Routing)
		ip address 192.168.1.250 255.255.255.0
		
		!Inicializando a Interface Virtual da VLAN-1
		
		!DICA: por padrão todas as Interfaces estão no status desligada (Shutdown) no Switch ou Router
		!DICA: por padrão todas as Portas de Rede estão no status ligada (No-Shutdown) no Switch
		
		!OBSERVAÇÃO: o comando: no também é utilizado para ligar as interfaces tirando do status shutdown
		no shutdown
		
		!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
		
		!DICA: somente no modo EXEC Privilegiado você tem o comando copy para salvar as configurações
		!DICA: existe o comando: do, esse recurso permite executar comandos fora do seu nível padrão
		
		!EXEMPLO: sw-l2-2960-1(config-line)# do copy running-config startup-config |
		!sw-l2-2960-1(config-line)# do show running-config | sw-l2-2960-1(config-line)# do write
		end

!Salvando as configurações da memória RAM (Running-Config) para a memória NVRAM (Startup-Config)
copy running-config startup-config
	
!Visualizando as configurações da memória RAM (Running-Config)
show running-config

!Visualizando as configurações das VLAN's padrão do Switch
show vlan brief

!Visualizando as configurações das interfaces e portas de rede do Switch
show ip interface brief

==============================================================================================

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
		description Interface de Gerenciamento do Switch SW-L2-2960-2
		
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
