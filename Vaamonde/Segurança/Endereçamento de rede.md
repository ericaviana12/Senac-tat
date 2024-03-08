Endereçamento de redes

---

Endereçamento IPv4 Linux e Windows
	Windows: Conexões de Rede
		Conexão Local
			Propriedades

Linux..: Configurações de Rede
		Cabeada
			Engrenagem

---

|Comandos básicos de redes - Windows e Linux|
:---

Verificação de endereçamento do IP 

	Windows					Linux
 
	ipconfig				ifconfig
	ipconfig /all				route -n
                                		resolvectl

Configuração do endereçamento do IP (renovação da concessão)

	Windows					Linux
 
	ipconfig /release			sudo ifconfig enp0s3 down
	ipconfig /renew				sudo ifconfig enp0s3 up

Visualização das estatísticas de cache de navegação

	Windows					Linux

	ipconfig /displaydns			resolvectl statistics

 Limpar as estatísticas de cache de navegação
 
	Windows					Linux

	ipconfig /flushdns			resolvectl flush-caches
						resolvectl reset-statistics
      
---

Ping - Avaliar a conexão da rede de equipamentos internos (computadores, impressoras, máquinas etc) e a conexão com servidores de internet e endereços de sites específicos, determinando o tempo de latência da resposta entre as máquinas

	Windows					Linux
 
	ping 8.8.8.8				ping 8.8.8.8
  	ping 8.8.8.8 -t (intermitente)
   
	route print				route -n
	tracert 8.8.8.8				sudo apt update
						sudo apt install traceroute
						traceroute 8.8.8.8
	nslookup 8.8.8.8			nslookup 8.8.8.8
