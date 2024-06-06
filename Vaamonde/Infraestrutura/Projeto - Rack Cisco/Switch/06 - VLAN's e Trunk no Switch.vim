Configuração das VLAN's e Trunk no Switch 3560

---

enable

	configure terminal

		vlan 10
			name svig01
		vlan 11
			name bruno 
		vlan 12
			name erica
		vlan 13
			name gabriel
		vlan 14
			name wesley
		vlan 15
			name wifi
			exit
		
		interface fastEthernet 0/2
			
			description Interface de Acesso da VLAN 11 do bruno			
			switchport mode access			
			switchport access vlan 11		
			exit
		
		interface fastEthernet 0/3
			description Interface de Acesso da VLAN 12 do erica
			switchport mode access
			switchport access vlan 12
			exit

		interface fastEthernet 0/4
			description Interface de Acesso da VLAN 13 do gabriel
			switchport mode access
			switchport access vlan 13
			exit

		interface fastEthernet 0/5
			description Interface de Acesso da VLAN 14 do wesley
			switchport mode access
			switchport access vlan 14
			exit

		interface fastEthernet 0/6
			description Interface de Acesso da VLAN Wireless do Grupo-01
			switchport mode access
			switchport access vlan 15
			exit
		
		interface range fastEthernet 0/7 - 23
			shutdown
			exit

		interface fastEthernet 0/24
			description Interface de Trunk com o Router 2911 do Grupo-01
			switchport trunk encapsulation dot1q
			switchport mode trunk
		end

copy running-config startup-config
	
show running-config

show ip interface brief

show vlan brief

show vlan id ??? (inserir o nº da VLAN para visualização)

show vlan name ??? (inserir o nome do integrante da VLAN para visualização)

show interface status

show interface trunk

show interfaces fastEthernet 0/24 status
show interfaces fastEthernet 0/24 switchport

ping 172.16.10.253

ping 172.16.10.254

ssh -l ???seu_usuário??? 172.16.10.254 (inserir o nome do integrante da VLAN para acessar)
