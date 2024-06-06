Configuração SVI (Switch Virtual Interface) no Switch 3560

---

enable

	configure terminal
	
	ip default-gateway 172.16.10.254
  
	interface vlan 10
		
		description Interface SVI de Gerenciamento do Grupo-01		
		ip address 172.16.10.253 255.255.255.0		
		no shutdown		
		end

!Salvando as configurações
copy running-config startup-config
	
!Visualizando as configurações
show running-config

!Visualizando as configurações de endereçamento IPv4
show ip interface brief

!Visualizando as informações de VLAN
show vlan brief

!Visualizando informações detalhadas da VLAN
show vlan id 10
