Configuração das SubInterfaces das VLAN's no Router 2911

---

enable

	configure terminal
	
		interface gigabitEthernet 0/0			
			no shutdown			
			exit

		interface gigabitEthernet 0/0.10
			description Subinterface da VLAN de SVI do Switch Layer 3 3560 do Grupo-01
			encapsulation dot1Q 10
			ip address 172.16.10.254 255.255.255.0
			exit

		interface gigabitEthernet 0/0.11
			description Subinterface da VLAN do bruno
			encapsulation dot1Q 11
			ip address 172.16.11.254 255.255.255.0
			exit

		interface gigabitEthernet 0/0.12
			description Subinterface da VLAN do erica
			encapsulation dot1Q 12
			ip address 172.16.12.254 255.255.255.0
			exit

		interface gigabitEthernet 0/0.13
			description Subinterface da VLAN do gabriel
			encapsulation dot1Q 13
			ip address 172.16.13.254 255.255.255.0
			exit

		interface gigabitEthernet 0/0.14
			description Subinterface da VLAN do wesley
			encapsulation dot1Q 14
			ip address 172.16.14.254 255.255.255.0
			exit

		interface gigabitEthernet 0/0.15
			description Subinterface da VLAN Wireless
			encapsulation dot1Q 15
			ip address 172.16.15.254 255.255.255.0
			end
		
copy running-config startup-config
	
show running-config

show ip interface brief

show ip route

show ip route connected
