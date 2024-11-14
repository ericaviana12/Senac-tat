01 - Desligando e reinicializando o servidor com halt no Ubuntu Server

    #opção do comando halt: -p (poweroff)
    sudo halt -p
    sudo halt --reboot

02 - Desligando e reinicializando o servidor com poweroff no Ubuntu Server

    #opção do comando poweroff: --reboot (reboot host)
    sudo poweroff
    sudo poweroff --reboot

03 - Desligando e reinicializando o servidor com init no Ubuntu Server

    #OBSERVAÇÃO: init é o primeiro processo iniciado durante a inicialização do sistema 
    #de computador. O init é um processo daemon que continua executando até o sistema 
    #ser desligado. o init trabalha no conceito de Runlevel (níveis de execução), no
    #GNU/Linux temos basicamente 08 (oito) tipos de Runlevels: init 0 - Shutdown, init 
    #1 - Single user mode or emergency mode, init 2 - No network, init 3 - Network is 
    #present, init 4 It is similar to runlevel 3, init 5 - Network is present, init 6 
    #This runlevel is defined to system restart, init s - Tells the init command to 
    #enter the maintenance mode, init S - Same as init s, init m - Same as init s and 
    #init S e init M - Same as init s or init S or init m.

    #opção do comando init: 0 (halt), 6 (reboot)
    sudo init 0
    sudo init 6

04 - Desligando e reinicializando o servidor com reboot no Ubuntu Server

    #opção do comando reboot: --halt (shutdown host)
    sudo reboot --halt
    sudo reboot

05 - Desligando e reinicializando o servidor com shutdown no Ubuntu Server

    #opção do comando shutdown: -P (poweroff), -h (halt 60 second), -r (reboot), -c (cancel)
    #now (Shutdown immediately), 19:50 (Shutdown at 19:50 pm), +20 (Shutdown in 20 minutes)
    sudo shutdown -P
    sudo shutdown -h
    sudo shutdown -r
    sudo shutdown -h now
    sudo shutdown -r now

    #agendando o desligamento ou o reboot do servidor
    sudo date
    sudo shutdown -r 19:50 Servidor será reinicializando às 19:50hs
    sudo shutdown -r +20 Servidor será reinicializando em 20 minutos
    sudo shutdown -c
