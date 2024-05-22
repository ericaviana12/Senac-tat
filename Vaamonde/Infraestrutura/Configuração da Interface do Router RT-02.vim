!Configuração da Interface do Router RT-02

enable
    configure terminal
        Interface GigabitEthernet 0/0
            description Interface LAN com sw-05
            ip address 192.168.2.254 255.255.255.0
            no shutdown
            end

write

show ip Interface brief (resumo das informações principais para todas as interfaces de rede em um roteador)
