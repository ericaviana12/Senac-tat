!Configuração de rota estática no Router RT-02

!Router RT-02

enable
    configure terminal
        ip route 192.168.3.0 255.255.255.0 192.168.2.1
        ip route 192.168.1.0 255.255.255.0 10.0.0.1
        end

write

!exibe a tabela de roteamento armazenada na memória RAM, exibindo as redes conhecidas e o código que indica como a informação foi obtida
show ip route
