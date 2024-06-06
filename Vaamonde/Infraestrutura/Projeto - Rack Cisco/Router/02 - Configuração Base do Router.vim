Configuração Base do Router Cisco 2911

---

enable

clock set 20:00:00 04 June 2024

configure terminal
	hostname rt-g01
	service password-encryption
	service timestamps log datetime msec
	security passwords min-length 8
	login block-for 120 attempts 4 within 60
	no ip domain-lookup
	banner motd #AVISO: acesso autorizado somente a funcionarios#
	enable secret 123@senac
	username bruno privilege 15 secret 123@senac
	username erica privilege 15 secret 123@senac
	username gabriel privilege 15 secret 123@senac
	username wesley privilege 15 secret 123@senac
	
	line console 0
		password 123@senac
		login local
		logging synchronous
		exec-timeout 5 30
		end

copy running-config startup-config
show running-config
disable
exit
