!mudando para o modo exec privilegiado
enable
    configure terminal
        hostname sw-01
        service password-encryption
        service timestamps log datetime msec
        no ip domain-lookup
        banner motd #AVISO: acesso autorizado somente para funcionarios#
        enable secret 123@senac
        username senac secret 123@senac
        line console 0
            login local
            password 123@senac
            logging synchronous
            exec-timeout 5 30
            end
copy running-config startup-config

!verificando as configurações
show running-config
