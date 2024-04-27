Switch

switch> = Função normal

enable = habilita o Terminal para a função ADM / switch#

? = Exibe a lista de comandos do menu atual

CTRL + SHIFT + 6 = destrava o Terminal

---

configure terminal = habilita a lista de comandos de configuração / switch(config)#

hostname = define o nome do sistema / switch(config)#hostname + nome do dispositivo
Exemplo: switch(config)#hostname Senac
Resultado: Senac(config)#

vlan 2 (nº da vlan que quer configurar) = acessa a configuração da vlan selecionada / switch(config)#vlan + nº da vlan que será configurada
Exemplo: switch(config)#vlan 2
Resultado: switch(config-vlan)#

name + nome da vlan selecionada = define o nome da vlan selecionada / (config-vlan)#name + nome da vlan que será configurada
Exemplo: switch(config-vlan)#name ADM

show vlan brief = exibe as vlan's criadas e nomeadas

---

interface f0/1 = acessa a interface indicada
Exemplo: switch(config)#interface f0/1

switchport access vlan2 = move a porta da interface selecionada anteriormente para a porta indicada
Exemplo: switch(config-if)#switchport access vlan2

---

interface range fastEthernet = acessa interfaces em sequência
Exemplo: switch(config)#interface range fast 0/1-10 

switchport access vlan2 = move a porta das interfaces selecionadas anteriormente para a porta indicada
Exemplo: switch(config-if-range)#switchport access vlan2

---

interface g0/1 = acessa a interface indicada
Exemplo: switch(config)#interface g0/1

switchport mode trunk = permite que o tráfego de dados das diferentes VLANs
Exemplo: switchport mode trunk

---

show running-config = para verificar as configurações realizadas / switch#show run

write ou wr = para validar as configurações realizadas / switch#write

...

exit = equivale ao voltar uma casa
end (escrito no Terminal) = equivale ao voltar para o início
CTRL + Z = equivale ao voltar para o início
CTRL + C = equivale ao voltar para o início

erase startup-config = apagar todas as configurações do equipamento Cisco / switch#erase star

reload = reiniciar o equipamento / switch#reload
