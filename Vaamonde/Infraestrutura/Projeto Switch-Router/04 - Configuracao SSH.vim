!04 - Configuracao SSH

---

!Automação da configuração do Switch 2

!Acessando o modo EXEC Privilegiado
enable

	!Acessando o modo de Configuração Global de comandos
	configure terminal
	
		!Configuração do nome de domínio FQDN (Nome de Domínio Totalmente Qualificado)
		ip domain-name senac.intra

		!Criação da chave de criptografia e habilitar o serviço de SSH Server local
		crypto key generate rsa

		!Habilitando a versão 2 do serviço de SSH Server
		ip ssh version 2

		!Habilitando o tempo de inatividade para novas conexões do SSH Server
		ip ssh time-out 60

		!Habilitando o número máximo de tentativas de conexões simultâneas no SSH Server
		ip ssh authentication-retries 2

		!Acessando as linhas virtuais de acesso remoto do Switch
		line vty 0 4
		
			!Configuração do protocolo de transporte somente SSH
			transport input ssh

			!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
			end

!Salvando as configurações da memória RAM para a memória NVRAM
write
	
!Visualizando as configurações da memória RAM
show running-config

!Visualizando as configurações do SSH Server
show ip ssh

!Visualizando das chaves públicas RSA
show crypto key mypubkey rsa

!Visualizando as conexões ativas do SSH Server
show ssh

!Visualizando as conexões remotas estabelecidas no Switch
show users
