Configuração do Protocolo OSPF Router Cisco 2911

---

enable

	configure terminal

		interface loopback 0
		description Interface de Loopback para ID do OSPF
		ip address 1.1.1.1 255.255.255.255
		no shutdown
		exit

---

		router ospf 1
		router-id 1.1.1.1
		passive-interface gigabitEthernet 0/0
		passive-interface gigabitEthernet 0/1
		auto-cost reference-bandwidth 10000
		log-adjacency-changes detail

		network 172.16.10.0 0.0.0.255 area 0
		network 172.16.11.0 0.0.0.255 area 0
		network 172.16.12.0 0.0.0.255 area 0
		network 172.16.13.0 0.0.0.255 area 0
		network 172.16.14.0 0.0.0.255 area 0
		network 172.16.15.0 0.0.0.255 area 0
		network 192.168.1.0 0.0.0.3 area 0
		network 192.168.1.20 0.0.0.3 area 0

		end

---

!Salvando todas as configurações
copy running-config startup-config

!Comandos de Verificação do OSPF e da última etapa

!Visualizando as configurações
show running-config

!Visualizando parâmetros e estatísticas do processo do protocolo de roteamento IP
show ip protocols

!Visualizando as configurações de endereçamento IPv4
show ip interface brief

!Visualizando as informações de Roteamento
show ip route

!Visualizando as informações de Roteamento do Open Shortest Path First (OSPF)
show ip route ospf 

!Visualizando as informações do Processo do OSPF
show ip route ospf 1 (ID)

!Visualizando as informações das listas das vizinhanças do OSPF
show ip ospf neighbor

!Visualizando as informações sumarizadas do banco de dados do OSPF
show ip ospf database

!Visualizando as informações dos statos dos links do OSPF
show ip ospf database router

!Visualizando as informações do processo do OSPF
show ip ospf 1 (ID)

!Visualizando as informações de interfaces do OSPF
show ip ospf interface
