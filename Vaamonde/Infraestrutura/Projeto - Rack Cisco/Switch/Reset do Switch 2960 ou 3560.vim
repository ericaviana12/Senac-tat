Reset do Switch 2960 ou 3560

---

         --- System Configuration Dialog ---

Would you like to enter the initial configuration dialog? [yes/no]: no

Press RETURN to get started!

Switch>

---

Switch>
	
 	!Acessar o modo privilegiado de comandos 
	Switch> enable

	!Remover o banco de dados de VLAN da Flash: 
	Switch# delete flash:vlan.dat

	!Remover os backups anteriores das turmas: 
	Switch# delete flash:startup-config

	!Reiniciar o Switch para testar as configurações
	Switch# reload

---

OBSERVAÇÃO IMPORTANTE: Caso o Switch não volte para o estado de fábrica, será necessário utilizar os procedimentos abaixo:

a) Pressionar o botão MODE até o switch reinicializar;
b) Na tela de inicialização, na mensagem de hardware, pressionar o botão MODE para abortar o carregamento do IOS;
c) Digitar o comando: flash_init;
d) Listar o conteúdo da Flash: dir flash:
e) Renomear o arquivo: rename flash:config.text flash:config.old
f) Inicializar o sistema: boot
g) Limpar o Startup-config: erase startup-config
h) Limpar as VLAN: delete flash:vlan.dat
i) Reinicializar o Switch: reload

---

Resumo - Linhas de comando
  	
enable
delete flash:vlan.dat
delete flash:startup-config
reload
