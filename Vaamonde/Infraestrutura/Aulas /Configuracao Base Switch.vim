Etapa 001 - Configuracao Base Switch - 2960

---

!Autor: Robson Vaamonde
!Procedimentos em TI: http://procedimentosemti.com.br
!Bora para Prática: http://boraparapratica.com.br
!Robson Vaamonde: http://vaamonde.com.br
!Facebook Procedimentos em TI: https://www.facebook.com/ProcedimentosEmTi
!Facebook Bora para Prática: https://www.facebook.com/BoraParaPratica
!Instagram Procedimentos em TI: https://www.instagram.com/procedimentoem
!YouTUBE Bora Para Prática: https://www.youtube.com/boraparapratica
!Data de criação: 16/04/2020
!Data de atualização: 09/08/2023
!Versão: 0.08
!Testado e homologado no Cisco Packet Tracer 7.3.x, 8.0.x, 8.1.x, 8.2.x e GNS3 2.2.x

!Primeiro acesso ao modo EXEC de Comandos de usuário (> sinal de Maior - user EXEC commands
!mode) Use o modo EXEC para definir, visualizar e testar as operações do sistema. 

!Em geral, os comandos EXEC de usuário permitem que você se conecte a dispositivos remotos, 
!altere as configurações da linha do terminal temporariamente, utilizado para executar os 
!testes básicos e listar as informações do Cisco IOS (Internetwork Operating System).

!O modo EXEC é dividido em dois níveis de acesso: Usuário (>) e Privilegiado (#).

!OBSERVAÇÃO: sempre que você acessar o modo EXEC pela primeira vez no Switch ou Router será 
!mostrado o nome (hostname) padrão dos equipamentos: Switch = switch> e Router = router>
switch>

!Acessando o modo EXEC Privilegiado (# sinal de Sustenido/Hashtag - privileged EXEC mode)

!DICA: utilizar sempre a tecla TAB para auto-completar os comandos no Cisco IOS
!DICA: se você estiver com dúvida do comando, utilizar o sinal de: ? (Interrogação) junto 
!com o comando para mostrar as opções e informações reduzidas do comando.

!EXEMPLO: show? | enable? | copy? | disable? | clock? | service?

!DICA: se você está estudando para o CCNAv7, é recomendado digitar os comandos completos, 
!não abreviados, utilize comandos abreviados quando você já domina o Cisco IOS.

!EXEMPLO: enable = en | show running-config = sh runn | interface FastEthernet0/0 = int fa0/0

!Para sair do modo EXEC Privilegiado você pode digitar o comando: disable ou exit
enable

!Configuração de Data/Hora em Inglês, você pode usar o Mês abreviado ou completo na configuração

!EXEMPLO: March ou Mar | April ou Apr | November ou Nov | December ou Dec
!EXEMPLO: Hora no formato Universal: Hora:Minutos:Segundos 00:00:00 - Data no formato: Dia Mês 
!Completo ou Abreviado e Ano Completo: 01 March 2023

!DICA: é recomendado utilizar o Protocolo NTP (Network Time Protocol) para manter sincronizado a 
!Data e Hora no Switch ou Router
clock set 14:00:00 29 August 2023

	!Acessando o modo de Configuração Global de comandos do Cisco IOS
	
	!DICA: nesse modo que é feita a maioria das configurações do Cisco IOS tanto no Switch como 
	!no Router
	configure terminal

	!Configuração do nome do Switch (configuração principal)
	
	!OBSERVAÇÃO: essa configuração é obrigatória para o serviço de acesso remoto SSH e demais 
	!serviços de rede que utiliza nomes para o seu acesso.
	
	!DICA: utilizar nomes curtos e objetivos, não usar caracteres especiais, espaço, acentuação, 
	!nomes complexo, etc...
	hostname sw-l2-2960-1
  
	!Habilitando o serviço de criptografia de senha do Tipo-7 Password do Cisco IOS
	
	!DICA: senhas do Tipo-7 por padrão não são criptografadas no Cisco IOS (serviço está desabilitado
	!por padrão no Cisco IOS)
	
	!OBSERVAÇÃO: senhas do Tipo-7 são fáceis de serem quebradas e não são mais usadas nos equipamentos 
	!da Cisco, nesse caso é recomendado utilizar senhas do Tipo-5 Secret
	
	!DESAFIO: site para quebrar senhas do Tipo-7 https://packetlife.net/toolbox/type7/
	service password-encryption
	
	!Habilitando o serviço de marcação de Data/Hora detalhado nos Logs do Cisco IOS
	
	!DICA: esse recurso é utilizado nos sistemas de monitoramento, desempenho e consumo de rede, 
	!principalmente nos sistemas de auditoria de acesso ou recursos/serviços de rede e protocolos 
	!de geração de logs nos equipamentos da Cisco
	service timestamps log datetime msec
  
	!Desativando o serviço de resolução de nomes de domínio (serviço habilitado por padrão) no 
	!Cisco IOS
	
	!DICA: se você desabilitar esse recurso o problema de travamento de comandos digitados fora do seu 
	!modo padrão no Cisco IOS é resolvido, mais você pede a resolução de nomes no Cisco IOS.
	
	!EXEMPLO: switch# time (Translating "time"...domain server (255.255.255.255))
	
	!DICA: para desbloquear o terminal, você pressiona: Ctrl+Shift+6 ou espera a liberação do terminal
	!DICA: o comando: no é usado para desabilitar ou remover configurações feitas no switch ou router 
	!da Cisco
	no ip domain-lookup
  
	!Configuração do banner da mensagem do dia no Cisco IOS

	!DICA: existe vários tipos de Banner no Cisco IOS, o MOTD (Mensagem do Dia) é o mais utilizado
	
	!EXEMPLO: banner motd (Mensagem do Dia), banner login (Mensagem de Login), banner exec (Mensagem 
	!de Modo EXEC), banner incoming (Mensagem de Entrada)
	
	!DICA: é recomendado não utilizar acentuação, textos longos ou complexos no Banner MOTD e demais
	
	!DESAFIO: buscar na Internet imagens ASCII Art para colocar no Banner MOTD
	
	!OBSERVAÇÃO: imagens ASCII Art no Banner não pode ser muito grande, recomendado ser <= 1024 pixels
	
	!CUIDADO: utilizar o mesmo sinal de delimitador de Início e Fim do Banner na imagem ASCII (# Sustenido/Hashtag)
	banner motd #AVISO: acesso autorizado somente a funcionarios#
  
	!Habilitando o uso de senha do Tipo-5 Secret para acessar o modo EXEC Privilegiado do Cisco IOS
	
	!DICA: senhas do Tipo-5 por padrão utilizam criptografia forte (Algorítimo MD5)
	
	!OBSERVAÇÃO: por padrão o acesso ao modo EXEC Privilegiado é liberado sem segurança
	enable secret 123@senac
  
	!Criação dos usuários locais utilizando senhas do Tipo-5 ou Tipo-7 e privilégios diferenciados
	
	!DICA: existe 16 níveis de privilégios no Cisco IOS (0 mais baixo até 15 mais alto)
	!DICA: não é recomendado criar usuários utilizando senhas do Tipo-7 (senhas fracas, fácil de quebrar)
	!DICA: existe a possibilidade de se autenticar no Switch utilizando os protocolos RADIUS ou TACACS
	!DICA: usuários com Privilégio 15 não precisa digitar o comando enable após se logar no Switch ou Router
	
	!OBSERVAÇÃO: criação de usuários comuns para administrar o Switch, privilégio padrão recomendado: 1
	username robson secret 123@senac
	username vaamonde password 123@senac
	username admin privilege 15 secret 123@senac
	
	!Acessando a Linha (line) Console, porta padrão de acesso Out-of-Band (Fora da Banda) do Switch Cisco
	
	!DICA: conexão feita utilizando o Cabo Console RS232/DB9 ou USB e software de Acesso ao Console (PuTTY)
	!DICA: em Switch Cisco temos apenas uma porta console RS232/DB9 ou USB
	line console 0
		
		!Forçando fazer login local utilizando os usuários e senhas locais criados no Switch
		
		!DICA: por padrão a configuração da Linha Console é permitir o acesso físico sem autenticação
		login local
		
		!Habilitando a senha de acesso do Tipo-7 Password (senha fraca)
		
		!DICA: na porta console não temos a opção de criar senhas do Tipo-5 (forte) somente Tipo-7 (fraca)
		
		!OBSERVAÇÃO: a porta console é considerada uma porta/interface física não remota ou virtual,
		!por esse motivo ela não tem suporte a senhas do Tipo-5, pois o acesso é feito fisicamente 
		!no Switch ou Router (se você tem a possibilidade de acessar fisicamente um equipamento, o 
		!nível de segurança da criptografia não importa mais, pois é uma invasão física e não lógica)
		
		!OBSERVAÇÃO: essa configuração só será utilizada caso não exista usuários locais criados e se 
		!a opção do comando: login local não for configurada.
		password 123@senac
		
		!Habilitando o sincronismo das mensagens de Logs na tela da linha de console do Cisco IOS
		
		!DICA: esse recurso ajuda bastante, pois as mensagens na tela não irão atrapalha na digitação
		
		!OBSERVAÇÃO: por padrão todas as mensagens de status ou logs do Switch são mostradas na tela
		logging synchronous
		
		!Habilitando o tempo de inatividade de uso da linha de console do Cisco IOS
		
		!DICA: configuração do tempo de inatividade em minutos e segundos da linha console
		
		!OBSERVAÇÃO: não é recomendado deixar o tempo de inatividade muito curto e nem muito longo
		exec-timeout 5 30
		
		!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
		
		!DICA: você pode utilizar a tecla de atalho: Ctrl+Z para sair de todos os níveis
		!DICA: o comando: exit sai nível por nível, o comando: end sai de todos os níveis
		
		!OBSERVAÇÃO: os dois comandos são utilizados principalmente em scripts de automação
		end

!Salvando as configurações da memória RAM (Running-Config) para a memória NVRAM (Startup-Config)

!DICA: no Cisco IOS temos vários tipos de memórias: RAM (Random Access Memory), NVRAM (Non-Volatile 
!Random Access Memory), Flash EEPROM (Electrically-Erasable Programmable Read-Only Memory), etc.
!DICA: você pode utilizar o comando: write, indicado para criação de scripts e considerado obsoleto 
!pela Cisco
copy running-config startup-config
	
!Visualizando as configurações da memória RAM (Running-Config)
show running-config

==============================================================================================

!Automação da configuração do Switch 2
enable

!Configuração de Data/Hora em inglês, você pode usar abreviado ou completo
clock set 14:00:00 16 April 2020

	!Acessando o modo de configuração global de comandos
	configure terminal
  
	!Configuração do nome do switch
	hostname sw-l2-2960-2
  
	!Habilitando o serviço de criptografia de senhas do Tipo-7 Password 
	service password-encryption
	
	!Habilitando o serviço de marcação de Data/Hora detalhado nos Logs
	service timestamps log datetime msec
  
	!Desativando a resolução de nomes de domínio
	no ip domain-lookup
  
	!Configuração do banner da mensagem do dia
	banner motd #AVISO: acesso autorizado somente a funcionarios#
  
	!Habilitando o uso senha do Tipo-5 Secret para acessar o modo EXEC Privilegiado
	enable secret 123@senac
  
	!Criação dos usuários locais utilizando senhas do Tipo-5 ou Tipo-7 e privilégios diferenciados
	username robson secret 123@senac
	username vaamonde password 123@senac
	username admin privilege 15 secret 123@senac
	
	!Acessando a linha console, porta padrão de acesso Out-of-Band (Fora da Banda)
	line console 0
		
		!Forçando fazer login local utilizando usuário e senha locais do switch
		login local
		
		!Habilitando senha de acesso do Tipo-7 Password
		password 123@senac
		
		!Sincronizando as mensagens de logs na tela
		logging synchronous
		
		!Habilitando o tempo de inatividade de uso do console
		exec-timeout 5 30
		
		!Saindo de todos os níveis e voltando para o modo EXEC Privilegiado
		end

!Salvando as configurações da memória RAM para a memória NVRAM
write
	
!Visualizando as configurações da memória RAM e NVRAM
show running-config
