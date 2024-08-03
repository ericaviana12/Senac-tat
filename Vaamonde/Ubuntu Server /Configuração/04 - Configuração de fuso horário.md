01 - Verificando as informações do Timezone (Fuso Horário) do Sistema Operacional Ubuntu Server

    #verificando as informações de fuso horário do sistema
    sudo timedatectl

    #OBSERVAÇÃO IMPORTANTE: no sistema operacional Ubuntu Server temos basicamente 03 (três)
    #configurações de hora (time): Local time (Hora Local), Universal time (Hora Universal)
    #e RTC (Real-time clock) time (Relógio de Tempo Real - BIOS).

02 - Configurando o Timezone (Fuso Horário) de São Paulo no Sistema Operacional Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: geralmente mudar para o Time Zone de America/Sao_Paulo a hora
    #fica errada no sistema, nesse caso podemos mudar para America/Fortaleza ou America/Bahia
    #esse error e por causa do Fuso Horário em relação ao Horário de Verão que não existe 
    #mais no Brasil (foi criado em 1931 pelo Governo Getúlio Vargas, só começou a ser aplicado
    #no Brasil em 1985 no Governo José Sarney e foi cancelado em 2018 no Governo Bolsonaro).

    #configurando o fuso horário de America São Paulo
    #OBSERVAÇÃO: ALTERAR CONFORME A SUA LOCALIDADE DO SEU SERVIDOR, MAIS INFORMAÇÕES SOBRE
    #TIMEZONE ACESSE: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
    #opção do comando timedatectl: set-timezone (set the system time zone to the specified value)
    sudo timedatectl set-timezone "America/Sao_Paulo"

    #verificando as mudanças do Timezone
    sudo timedatectl

03 - Configurando o sincronismo de Data e Hora com o Protocolo NTP no Ubuntu Server

    #O NTP é um protocolo para sincronização dos relógios dos computadores baseado no 
    #protocolo UDP sob a porta 123. É utilizado para sincronização do relógio de um 
    #conjunto de computadores e dispositivos em redes de dados com latência variável.

    #editando o arquivo de configuração timesyncd.conf
    sudo vim /etc/systemd/timesyncd.conf
    INSERT
	
	    #descomentar e alterar os valores das variáveis a partir da linha: 14
	    #OBSERVAÇÃO IMPORTANTE: no Brasil sempre utilizar o site: https://ntp.br/
	    #para o sincronismo de Data e Hora.
	    [Time]
	    NTP=a.st1.ntp.br
	    FallbackNTP=a.ntp.br

    #salvar e sair do arquivo
    ESC SHIFT : x <Enter>

04 - Reinicializar o serviço do Systemd Timesyncd (Sincronismo de Data e Hora) no Ubuntu Server

    #reiniciar o serviço do Timesyncd
    sudo systemctl restart systemd-timesyncd.service

    #verificar o status do serviço do Timesyncd
    sudo systemctl status systemd-timesyncd.service

    #verificar as informações do fuso horário e sincronismo
    sudo timedatectl

05 - Configuração de Data e Hora Manual no Sistema Operacional Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: só utilizar as configurações de Data e Hora em modo manual caso
    #as configurações de sincronismo automático não funcione de forma adequada, não recomendo
    #configuração Data e Hora em modo manual, pois isso é um alerta de erro de sistema.

    #opção do comando date: -s (set), %d (day of month), %m (month), %Y (year), %H (hour), 
    #%M (minute), %S (second)
    sudo date
    sudo date +%d/%m/%Y
    sudo date -s 20/01/2023
    sudo date +%H:%M:%S
    sudo date -s 13:30:00

06 - Sincronizando Data e Hora do Sistema Operacional com o Hardware (BIOS) no Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: mesmo cenário da utilização do comando date, da Data e hora da BIOS
    #do Hardware e mantida pela CMOS e Bateria que mantém essa hora armazenada, caso a Data e
    #Hora de BIOS esteja errada, recomendo verificar a Bateria pois já é um sinal de falha de
    #Hardware, no GNU/Linux você pode sincronizar a Data hora de Software para o Hardware e 
    #vice-versa, também não recomendo a sua utilização.

    #opção do comando hwclock: --systohc (system clock to hardware clock), --hctosys (hardware 
    #clock to system clock)
    sudo hwclock --show
    sudo hwclock --systohc
    sudo hwclock --hctosys
