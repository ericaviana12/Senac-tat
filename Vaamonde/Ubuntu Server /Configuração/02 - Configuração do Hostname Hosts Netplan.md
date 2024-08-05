Configuração Hostname Hosts Netplan

Hostname: é usado para exibir o nome DNS do sistema e para exibir ou defina seu nome de host ou nome de domínio NIS. O arquivo /etc/hostname armazena as informações de nome de máquina e domínio no formato FQDN (Fully Qualified Domain Name)

Netplan é um utilitário para configurar facilmente a rede em um sistema Linux. Você simplesmente cria uma descrição YAML das interfaces de rede necessárias e o que cada uma deve ser configurada para fazer. A partir desta descrição o Netplan irá gerar toda a configuração necessária para a ferramenta de renderização escolhida.

Hosts: pesquisa de tabela estática para nomes de host, é utilizado quando não temos servidores DNS (Domain Name System) e fazermos o apontamento diretamente no arquivo localizado em /etc/hosts

FQDN, algumas vezes denominado nome de domínio absoluto, é um nome de domínio que especifica sua localização exata na árvore hierárquica do Domain Name System. Ele especifica todos os níveis de domínio, incluindo, pelo menos, um domínio de segundo nível e um domínio de nível superior.

---

01 - Alterando o nome FQDN (Fully Qualified Domain Name) do Ubuntu Server

    #editando o arquivo de configuração do Hostname
    sudo vim /etc/hostname
    INSERT
	
	    #adicionar o nome de domínio na linha 1
	    #OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO DOMÍNIO PARA O SEU CENÁRIO
	    wserica.pti.intra

    #salvar e sair do arquivo
    ESC SHIFT : x <Enter>

02 - Alterando as entradas no arquivo Hosts do Ubuntu Server

    #editando o arquivo de configuração do Hosts
    sudo vim /etc/hosts
    INSERT
	
    	  #adicionar o nome de domínio e apelido na linha 2 e 3
	      #OBSERVAÇÃO IMPORTANTE: ALTERAR O NOME DO DOMÍNIO E APELIDO PARA O SEU CENÁRIO
	      127.0.0.1      localhost.pti.intra    localhost
  	    127.0.1.1      wserica.pti.intra   wserica
  	    10.26.44.210   wserica.pti.intra   wserica

    #salvar e sair do arquivo
    ESC SHIFT : x <Enter>

03 - Instalando os principais software de rede no Ubuntu Server

    #atualizando as lista do sources.list e instalando os pacotes e ferramentas de rede
    sudo apt update
    sudo apt install bridge-utils ifenslave net-tools

04 - Verificando informações do Hardware de Rede no Ubuntu Server

    #verificando os dispositivos PCI de Placa de Rede instalados
    #opções do comando lspci: -v (verbose), -s (show)
    #opção do comando grep: -i (ignore-case)
    #opção do redirecionador | (pipe): Conecta a saída padrão com a entrada padrão de outro comando
    sudo lspci -v | grep -i ethernet

    #verificando os detalhes do hardware de Placa de Rede instalada
    sudo lshw -class network

05 - Verificando as informações de Endereços IPv4 no Ubuntu Server

    #verificando as configurações de endereçamento IP da Placa de Rede instalada
    #opção do comando ifconfig: -a (all)
    sudo ifconfig -a
    sudo ip address show

    #verificando as configurações de Gateway (route)
    #opção do comando route: -n (number)
    sudo route -n
    sudo ip route

    #verificando as informações de cache dos Servidores DNS (resolução de nomes)
    sudo resolvectl

06 - Alterando as configurações da Placa de Rede do Ubuntu Server

    #OBSERVAÇÃO: o nome do arquivo pode mudar dependendo da versão do Ubuntu Server.
    #/etc/netplan/00-installer-config.yaml #Padrão do Ubuntu Server 22.04.x LTS

    #OBSERVAÇÃO IMPORTANTE: o arquivo de configuração do Netplan e baseado no formato 
    #de serialização de dados legíveis YAML (Yet Another Markup Language) utilizado 
    #pela linguagem de programação Python, muito cuidado com o uso de espaços e 
    #tabulação e principalmente sua indentação.

    #listando o conteúdo do diretório do Netplan
    #opção do comando ls: -l (long listing), -h (human-readable)
    ls -lh /etc/netplan/

    #fazendo o backup do arquivo de configuração original do Netplan
    #opção do comando cp: -v (verbose)
    sudo cp -v /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.old

    #editando o arquivo de configuração do Netplan
    sudo vim /etc/netplan/00-installer-config.yaml
    INSERT


    #bloco de configuração da rede
    network:
      #bloco de configuração do protocolo Ethernet
      ethernets:
        #configuração da Interface Física (Nome Lógico comando lshw)
        enp0s3:
        #desabilitando o suporte ao DHCP Client
        dhcp4: false
        #desativando o suporte ao IPv6
        #OBSERVAÇÃO IMPORTANTE: utilizar essa opção somente se você não está usando
        #na sua rede o recurso do IPv6
        link-local: []
        #alterar o endereço IPv4 para o seu cenário
        #OBSERVAÇÃO IMPORTANTE: configuração do Endereço IPv4 dentro de Colchetes
        addresses: [10.26.44.210/24]
        #alterar o gateway padrão para o seu cenário
        #OBSERVAÇÃO IMPORTANTE: a opção de Gateway4 foi descontinuada, recomendo
        #utilizar as opções de Routes do Netplan para configurar o Gateway padrão
        #gateway4: 10.26.44.210
        routes:
          #configuração da rota padrão (cuidado com o traço antes do to)
          - to: default
            #configuração do endereço IPv4 do Gateway
            via: 10.26.44.1
        #configuração dos servidores de DNS Preferencial e Alternativo
        nameservers:
          #alterar os servidores DNS para o seu cenário
          #OBSERVAÇÃO: configuração do Endereço IPv4 dentro de Colchetes e separados
          #por vírgula, recomendo pelo menos dois DNS Server serem configurados ou 
	      #somente o endereço do Servidor de DNS Local d Rede.
          addresses: [8.8.8.8, 8.8.4.4]
          #alterar a pesquisa de domínio para o seu cenário
          #OBSERVAÇÃO: configuração da pesquisa de Domínio dentro de Colchetes
          search: [erica.intra]
      #fim do bloco de configuração do protocolo Ethernet versão 2
      version: 2


      #salvar e sair do arquivo
    ESC SHIFT : x <Enter>

07 - Aplicando as configurações do Netplan e verificando as informações de Rede do Ubuntu Server

    #aplicando as mudanças do Netplan em modo Debug (detalhado)
    sudo netplan --debug apply

    #OBSERVAÇÃO IMPORTANTE: você pode utilizar a opção: try que caso aconteça alguma
    #falha na hora de configurar a placa de rede ele reverte a configuração inicial
    sudo netplan --debug try

    #verificando o endereço IPv4 da Interface de Rede
    sudo ifconfig
    sudo ip address show

    #verificando as informações de Gateway padrão
    #opção do comando route: -n (numeric)
    sudo route -n
    sudo ip route

    #verificando as informações dos Servidores DNS e Pesquisa de Domínio
    sudo resolvectl

    #testando a conexão com a Internet
    ping 8.8.8.8
    ping google.com

    #verificando as informações do nome do servidor Ubuntu Server
    #opção do comando hostname: -A (all-fqdns), -d (domain), -i (ip address)
    sudo hostname
    sudo hostname -A
    sudo hostname -d
    sudo hostname -i

08 - Acessando a máquina virtual do Ubuntu Server remotamente via SSH

    #OBSERVAÇÃO: após a configuração da Placa de Rede do Ubuntu Server você já pode
    #acessar remotamente o seu servidor utilizando o Protocolo SSH nos clientes Linux
    #ou Microsoft para dá continuidade nas configurações do servidor, ficando mais
    #fácil administrar e configurar os principais serviços de rede de forma remota.

    #testando a conexão com o Ubuntu Server
    ping 10.26.44.210

    #acessando remotamente o Ubuntu Server
    ssh senac@10.26.44.210

    #confirmando a troca das chaves públicas e do fingerprint do SSH
    Yes <Enter>
