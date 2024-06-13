Configuração da Interface Serial no Router Cisco 2911

---

enable

	configure terminal
		
	interface serial 0/0/0
	
		description Interface Serial do Grupo-01 para Grupo-02		
		ip address 192.168.1.1 255.255.255.252		
		clock rate 64000		
		bandwidth 64		
		no shutdown
		exit
		
---

	interface serial 0/0/1
	
		description Interface Serial do Grupo-06 para Grupo-01		
		ip address 192.168.1.22 255.255.255.252		
		bandwidth 64		
		no shutdown
		end

---

copy running-config startup-config

show running-config

show ip interface brief

show ip route

---

!Pingando a Interface Serial 0/0/0
ping 192.168.1.1 (serial 0/0/0)

!Pingando a Interface Serial 0/0/1
ping 192.168.1.22 (serial 0/0/1)

---

Depois do Grupo 02 e Grupo 06 tiver acabado a configuração

!Pingando a Interface Serial 0/0/0
ping 192.168.1.2 (serial 0/0/0)

!Pingando a Interface Serial 0/0/1
ping 192.168.1.21 (serial 0/0/1)
