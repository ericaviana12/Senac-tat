!Configuração de rota padrão no Router RT-01

!Router RT-01

enable
    configure terminal
        ip route 0.0.0.0 0.0.0.0 10.0.0.2
        end

write

!exibe a tabela de roteamento armazenada na memória RAM, exibindo as redes conhecidas e o código que indica como a informação foi obtida
show ip route
