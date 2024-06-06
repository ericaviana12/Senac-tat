Reset do Roteador (Router) 2911

---

1 - Parar a inicialização do IOS do Router Cisco 2911 utilizando as teclas de atalho: Ctrl + Break (No PuTTY utilizar o Botão direito do Mouse na Barra de Título e selecionar as opções: Send Command: Break)

2 - Nas configurações do Cisco ROMmon digite a chave em hexadecimal: confreg 0x2142

rommon 1> confreg 0x2142

3 - Após a mudança da chave, digite: reset para reiniciar o Router Cisco 2911.

rommon 2> reset

4 - O Router Cisco 2911 vai inicializar sem ler o arquivo de configuração: startup-config da NVRAM.

5 - Limpando as configurações do Router Cisco 2911 e voltando a ler o arquivo de configuração: startup-config da NVRAM.

Router>
	
	!Acessar o modo privilegiado de comandos 
	Router> enable

	!Limpando as configuração da NVRAM
	Router# erase startup-config

	!Remover os backups anteriores das turmas: 
	Router# delete flash:startup-config

	!Entrar no modo de configuração global
	Router# configure terminal

		!Alterar o registro de inicialização do Router
		Router (config)# config-register 0x2102 

		!Saindo de dos os modos de configuração
		Router (config)# end

	!Salvando as configurações da RAM para a NVRAM
	Router# copy running-config startup-config 

	!Reiniciar o Router para testar as configurações
	Router# reload

	!Após a reiniciar o Router Cisco 2911 verifique a chave de registro
	!Valor está na última linha referente ao cofreg 0x2102
	Router> enable
	Router# show version
		Configuration register is 0x2102

---

Obs1: caso você digite chaves diferentes no ROMmon o sistema pode inicializar com caracteres estranhos, isso está associado a velocidade da porta console (Padrão 9600bps), será necessário fazer os testes mudando as velocidades de conexão da porta console no PuTTY para: 1200, 2400, 4800, 9600, 19200, 38400, 57600 e 115200.

Obs2: para corrigir essa falha será necessário alterar novamente a chave de registro para:

a) Acessar o modo Exec Privilegiado: enable <Enter>
b) Mudar o registro de inicialização: config-register 0x2102 <Enter>
c) Acessar a Linha Console: line console 0 <Enter>, 
d) Alterar a velocidade da Porta Console: speed 9600 <Enter>
e) Salvar as configurações: copy running-config startup-config <Enter>
f) Reinicializar o router: reload <Enter>
g) Verificar a chave de registro: enable <Enter>, show version <Enter>
