O Windows é 100x mais seguro que o Linux

Não desabilitar o Firewall, pois é o sistema de proteção para tudo que está na rede para evitar ataque de invasores ou softwares maliciosos entrarem no computador

Para habilitar ou desabilitar permissão de entrada de ping no Windows e/ou Linux

Windows
    
  Iniciar, Painel de Controle, Firewall do Windows
   	Avançado, ICMP, Configurações
		Permitir solicitação de ECHO de Entrada

Linux
    
	Negar ICMP...: sudo sysctl net.ipv4.icmp_echo_ignore_all=1
 	Permitir ICMP: sudo sysctl net.ipv4.icmp_echo_ignore_all=0
