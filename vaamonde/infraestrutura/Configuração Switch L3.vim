!Transformar o Switch L3 em Swithc L3 e habilitar a IF0/24

enable
    configure terminal
        ip routing
        interface FastEthernet 0/24
            no switchport
            description Interface de Gateway com o Router
            ip address 192.168.2.1 255.255.255.0
            exit

        ip default-gateway 192.168.2.254
        end 

write
