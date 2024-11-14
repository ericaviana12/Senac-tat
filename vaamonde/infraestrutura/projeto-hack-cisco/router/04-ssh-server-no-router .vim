Configuração do SSH Server no Router 2911

---

enable

	configure terminal
		
		ip domain-name senac.br	
		crypto key generate rsa general-keys modulus 1024		
		ip ssh version 2		
		ip ssh time-out 60		
		ip ssh authentication-retries 2
		end

copy running-config startup-config
	
show running-config

show ip ssh

show crypto key mypubkey rsa

show ssh (só vai funcionar quando você se conectar remoto no Router)

show users (só vai funcionar quando você se conectar remoto no Router)
