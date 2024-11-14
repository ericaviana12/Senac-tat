!Configuração da Interface WAN RT-02 para RT-01

enable
    configure terminal
        Interface GigabitEthernet 0/0/0
            description Interface WAN RT-02 para RT-01
            ip address 10.0.0.2 255.255.255.252 (pois é um link de ponta a ponta para ligar router, sendo necessário somente 2 IP's por sub-rede)
            no shutdown
            end

write

!resumo das informações principais para todas as interfaces de rede em um roteador
show ip Interface brief

!exibe a tabela de roteamento armazenada na memória RAM, exibindo as redes conhecidas e o código que indica como a informação foi obtida
show ip route
