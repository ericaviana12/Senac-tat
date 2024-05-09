!SVI(Switch Virtual Interface)
enable
    configure terminal
        ip default-gateway 192.167.1.254
        Interface vlan 1
            description Interface SVI
            ip address 192.168.1.251 255.255.255.0
            no shutdown
            end
write
       
show running-config
show ip interface brief
ping 192.168.1.251
ping 192.168.1.1
