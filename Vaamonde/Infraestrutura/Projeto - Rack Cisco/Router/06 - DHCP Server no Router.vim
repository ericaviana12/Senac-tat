Configuração do DHCP Server no Router 2911

---

enable
   
    configure terminal
 
        ip dhcp excluded-address 172.16.11.1 172.16.11.100
        ip dhcp excluded-address 172.16.11.200 172.16.11.254
        ip dhcp pool vlan-11
            network 172.16.11.0 255.255.255.0
            default-router 172.16.11.254
            dns-server 8.8.8.8 8.8.4.4
            domain-name senac.br
            exit
 
        ip dhcp excluded-address 172.16.12.1 172.16.12.100
        ip dhcp excluded-address 172.16.12.200 172.16.12.254
        ip dhcp pool vlan-12
            network 172.16.12.0 255.255.255.0
            default-router 172.16.12.254
            dns-server 8.8.8.8 8.8.4.4
            domain-name senac.br
            exit
 
        ip dhcp excluded-address 172.16.13.1 172.16.13.100
        ip dhcp excluded-address 172.16.13.200 172.16.13.254
        ip dhcp pool vlan-13
            network 172.16.13.0 255.255.255.0
            default-router 172.16.13.254
            dns-server 8.8.8.8 8.8.4.4
            domain-name senac.br
            exit
 
        ip dhcp excluded-address 172.16.14.1 172.16.14.100
        ip dhcp excluded-address 172.16.14.200 172.16.14.254
        ip dhcp pool vlan-14
            network 172.16.14.0 255.255.255.0
            default-router 172.16.14.254
            dns-server 8.8.8.8 8.8.4.4
            domain-name senac.br
            exit
 
        ip dhcp excluded-address 172.16.15.1 172.16.15.100
        ip dhcp excluded-address 172.16.15.200 172.16.15.254
        ip dhcp pool vlan-15
            network 172.16.15.0 255.255.255.0
            default-router 172.16.15.254
            dns-server 8.8.8.8 8.8.4.4
            domain-name senac.br
            end
 
copy running-config startup-config
 
show ip dhcp pool
 
show ip dhcp binding (essas informações só estará disponível depois que configurar os clientes)
