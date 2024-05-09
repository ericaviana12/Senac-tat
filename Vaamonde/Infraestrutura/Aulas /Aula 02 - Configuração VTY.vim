Etapa-002- Configuração VTY

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
!Versão: 0.06
!Testado e homologado no Cisco Packet Tracer 7.3.x, 8.0.x, 8.1.x, 8.2.x e GNS3 2.2.x

!Acessando o modo EXEC Privilegiado
enable

	!Acessando o modo de Configuração Global de comandos
	configure terminal
	
		!Acessando as Linhas (Lines) Virtuais de acesso remoto do Switch no Cisco IOS
		
		!DICA: por padrão o Switch Cisco possui 16 (0 até 15) linhas virtuais de acesso remoto
		
		!OBSERVAÇÃO: as linhas virtuais são utilizadas para acessar remotamente o terminal do 
		!Switch ou Router
		
		!OBSERVAÇÃO: linhas virtuais não são utilizadas para monitoramento, para isso usamos o 
		!Protocolo SNMP (Simple Network Management Protocol) com as configurações do SVI (Switch 
		!Virtual Interface) que será vista mais para frente.
		
		!DICA: não é recomendado habilitar poucas linhas ou todas as linhas virtuais no Cisco IOS
		
		!OBSERVAÇÃO: as linhas virtuais é bem parecida com a linha console, a diferença é que o 
		!acesso e feito remotamente utilizando endereço IPv4 ou IPv6.
		
		!DICA: por padrão as linhas virtuais estão desabilitadas no Cisco IOS, elas dependem da 
		!configuração do SVI para funcionar.
		line vty 0 4

			!Forçando fazer login local utilizando os usuários e senhas locais criados no Switch
			login local

			!Habilitando a senha de acesso do Tipo-7 Password (senha fraca)
			
			!DICA: igual na configuração da Line Console, essa regra só irá funcionar se não 
			!existir usuários no Switch e se você não configurou o login local.
			password vaamonde@pti

			!Habilitando o sincronismo das mensagens de Logs na tela do terminal do Cisco IOS
			logging synchronous

			!Habilitando o tempo de inatividade de uso do linha virtual
			exec-timeout 5 30

			!Configuração do tipo de protocolo de transporte de entrada ou saída da linha virtual
			
			!DICA: na linha virtual você pode controlar o tipo de acesso remoto de entrada ou saída
			
			!OBSERVAÇÃO: existe vários protocolos de acesso remoto, os mais utilizados são: Telnet 
			!(não seguro) ou SSH (seguro), por motivo de segurança, acesso remoto utilizando o protocolo 
			!Telnet não é mais recomendado
			
			!DICA: existe várias opções de configuração do protocolo de transporte, a opção: all 
			!permite todos os protocolos
			
			!EXEMPLO DE ENTRADA: transport input {lat | mop | nasi | none | pad | rlogin | ssh | telnet | v120} 
			!EXEMPLO DE SAÍDA: transport output {lat | mop | nasi | none | pad | rlogin | ssh | telnet | v120}
			!EXEMPLO DE PREFERÊNCIA: transport preferred {lat | mop | nasi | none | pad | rlogin | ssh | telnet | v120}
			transport input all

			!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
			end

!Salvando as configurações da memória RAM (Running-Config) para a memória NVRAM (Startup-Config)
copy running-config startup-config

!Visualizando as configurações da memória RAM (Running-Config)
show running-config

==============================================================================================

!Automação da configuração do Switch 2

!Acessando o modo EXEC Privilegiado
enable

	!Acessando o modo de Configuração Global de comandos
	configure terminal
	
		!Acessando as linhas virtuais de acesso remoto do Switch
		line vty 0 4

			!Forçando fazer login local utilizando usuário e senha locais do switch
			login local

			!Habilitando senha de acesso do Tipo-7 Password
			password vaamonde@pti

			!Sincronizando as mensagens de logs na tela
			logging synchronous

			!Habilitando o tempo de inatividade de uso da linha virtual
			exec-timeout 5 30

			!Configuração do tipo de protocolo de transporte de entrada
			transport input all

			!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
			end

!Salvando as configurações da memória RAM para a memória NVRAM
write

!Visualizando as configurações da memória RAM
show running-config
