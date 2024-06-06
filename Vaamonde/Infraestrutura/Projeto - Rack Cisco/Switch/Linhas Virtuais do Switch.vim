Configuração das Linhas Virtuais do Switch 3560

---

enable

	configure terminal
	line vty 0 4
		
		password 123@senac		
		login local 		
		logging synchronous		
		exec-timeout 5 30		
		transport input ssh		
		end

copy running-config startup-config
	
show running-config
