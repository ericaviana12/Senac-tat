#Rota criada pelo professor Robson Vaamonde - Técnico de Informática / Senac Tatuapé

!02 - Configuracao VTY

---

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
			password 123@senac

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
