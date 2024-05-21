!01 - Configuracao Base Switch - 2960

---

!Automação da configuração do Switch 2
enable

	!Acessando o modo de configuração global de comandos
	configure terminal
  
	!Configuração do nome do switch
	hostname sw-01
  
	!Habilitando o serviço de criptografia de senhas do Tipo-7 Password 
	service password-encryption
	
	!Habilitando o serviço de marcação de Data/Hora detalhado nos Logs
	service timestamps log datetime msec
  
	!Desativando a resolução de nomes de domínio
	no ip domain-lookup
  
	!Configuração do banner da mensagem do dia
	banner motd #AVISO: acesso autorizado somente a funcionarios#
  
	!Habilitando o uso senha do Tipo-5 Secret para acessar o modo EXEC Privilegiado
	enable secret 123@senac
  
	!Criação dos usuários locais utilizando senhas do Tipo-5 ou Tipo-7 e privilégios diferenciados
	username erica secret 123@senac (utilizado somente essa)
	username erica password 123@senac
	username admin privilege 15 secret 123@senac
	
	!Acessando a linha console, porta padrão de acesso Out-of-Band (Fora da Banda)
	line console 0
		
		!Forçando fazer login local utilizando usuário e senha locais do switch
		login local
		
		!Habilitando senha de acesso do Tipo-7 Password
		password 123@senac
		
		!Sincronizando as mensagens de logs na tela
		logging synchronous
		
		!Habilitando o tempo de inatividade de uso do console
		exec-timeout 5 30
		
		!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
		end

!Salvando as configurações da memória RAM para a memória NVRAM
write
	
!Visualizando as configurações da memória RAM e NVRAM
show running-config
