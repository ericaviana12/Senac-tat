|Projeto de configuração de rack Cisco / Docente responsável - Robson Vaamonde|
| ----- |

Base do projeto em: https://github.com/vaamonde/ccna-v7-200-301/tree/master/rackcisco

---

Primeira etapa: Documentação dos Pontos de Rede do Rack Cisco

    Integrantes         Funções
    
    Bruno Dorea         Router Cisco 2911
    Erica Viana         Switch Cisco Catalyst 3560
    Gabriel Coutinho    Link WAN, Internet e Documentação
    Wesley Souza        Cabeamento Estruturado

Todos os integrantes serão responsáveis pelos desktops Linux Mint e Windows 10

	Os Kits do Rack Cisco foram divididos em: 6 (seis) Grupos:
	Grupo-01: 1 (um) Switch Cisco Catalyst Layer-3 3560 e 1 (um) Router Cisco 2911

---

Segunda etapa: Usuário e Senha padrão dos Switches e Routers Cisco de cada Grupo

Nos scripts de configuração Base do Switch e Router existe as linhas de configuração dos usuários e senhas conforme abaixo:

    a) Senha padrão: 123@senac
    b) Usuário: seguir o padrão da documentação dos scripts alterando o seu valor dentro de ???___???.
	Exemplo: username ???nome_do_primeiro_integrante??? privilege 15 secret 123@senac

OBSERVAÇÃO IMPORTANTE: sempre que aparecer o carácter: ? (interrogação), você deverá retirar o carácter e alterar o seu valor, o uso de ? (interrogação) não é permitido nas configurações do Cisco IOS.

Nos scripts do Switch e Router você precisa prestar muita atenção nas linhas de configuração abaixo, essas linhas precisam ser alteradas seu valor antes de executar o comando no Switch ou Router.

    Nome dos Switches, Routers e Access Point de Cada Grupo:
    Grupo-01:   Hostname Switch 3560: sw-g01   Hostname Router 2911: rt-g01   Access Point: ap-g01

---

Terceira etapa: Determinação das Redes (Sub-Redes) e VLAN (Virtual-LAN) de Cada Grupo

Todo o cenário será configurado utilizando VLAN (Virtual-LAN), será determinado 6 (seis) VLAN's por Grupo, sendo elas

    a) 01 (uma)    VLAN de SVI (Switch Virtual Interface - Gerenciamento da Switch 3560)
    b) 04 (quatro) VLAN's para cada usuário na rede (4 integrantes do grupo - Desktops)
    c) 01 (uma)    VLAN de Rede Sem-Fio (Wi-Fi/Wireless)

Determinação das Sub-Redes e VLAN de cada Grupo.

    Grupo-01:
    Subredes:   172.16.10.0/24   VLAN:  10  -  utilizada no SVI do Switch Layer 3
    Subredes:   172.16.11.0/24   VLAN:  11  -  utilizada pelo primeiro usuário da rede - Bruno
    Subredes:   172.16.12.0/24   VLAN:  12  -  utilizada pelo segundo usuário da rede - Erica
    Subredes:   172.16.13.0/24   VLAN:  13  -  utilizada pelo terceiro usuário da rede - Gabriel
    Subredes:   172.16.14.0/24   VLAN:  14  -  utilizada pelo quarto usuário da rede - Wesley
    Subredes:   172.16.15.0/24   VLAN:  15  -  utilizada pela rede sem-fio

---

Quarta etapa: Determinação dos Endereços de SVI (Switch Virtual Interface) e Gateway de cada Grupo

    Grupo-01:  SVI:  172.16.10.253/24  -  Gateway: 172.16.10.254

---

Quinta etapa: Determinação das Portas de Rede de cada VLAN dos Usuários dos Grupos

OBSERVAÇÃO IMPORTANTE: a Porta de Rede: FastEthernet 0/1 não será utilizada nas configurações.

OBSERVAÇÃO IMPORTANTE: O nome da VLAN deverá ser o Primeiro Nome dos Alunos do Grupo, exemplo: Robson Vaamonde - nome da VLAN 11: robson (sempre em minúsculo), Leandro Ramos - nome da VLAN 12: leandro, etc...

OBSERVAÇÃO: CASO O GRUPO NÃO TENHA 04 (QUATRO) ALUNOS, DESCONSIDERAR A CRIAÇÃO DAS VLAN'S CORRESPONDENTE, EXEMPLO: GRUPO COM 3 (TRÊS) ALUNOS DESCONSIDERAR A QUARTA VLAN DO GRUPO MAIS MANTER A VLAN DA REDE SEM-FIO COM O SEU NÚMERO E NOME

    Grupo-01:
    Porta: 2    VLAN: 11    Nome: Bruno
    Porta: 3    VLAN: 12    Nome: Erica
    Porta: 4    VLAN: 13    Nome: Gabriel
    Porta: 5    VLAN: 14    Nome: Wesley
    Porta: 6    VLAN: 15    Nome: wifi01

---

Sexta etapa: Determinação das Sub-Interfaces de Gateway de cada VLAN dos Grupos

Determinação do endereço IPv4 de Gateway do Router 2911 utilizadas para Rotear as VLAN's

    Grupo-01:   
    Subinterface: 10    IPv4: 172.16.10.254/24
    Subinterface: 11    IPv4: 172.16.11.254/24 - Bruno
    Subinterface: 12    IPv4: 172.16.12.254/24 - Erica
    Subinterface: 13    IPv4: 172.16.13.254/24 - Gabriel
    Subinterface: 14    IPv4: 172.16.14.254/24 - Wesley
    Subinterface: 15    IPv4: 172.16.15.254/24

---

Sétima etapa: Determinação da Interface Serial de WAN dos Grupos e seu Endereçamento IPv4

DICA: NESSA ETAPA VOCÊS PRECISAM CONVERSAR COM OS OUTROS GRUPOS, NÃO ADIANTA VOCÊ FAZER A SUA PARTE SE O OUTRO GRUPO NÃO FAZER A DELE E SE OS DOIS ERRAREM TUDO ESTARÁ ERRADO, TODOS OS GRUPOS DEPENDEM DESSA CONFIGURAÇÃO PARA FUNCIONAR.

Endereçamento IP para Rede de Interligação (WAN) - (GP=Grupo | PI=Primeiro IP | UP=Último IP)
Interface Serial 0/0/0 e Serial 0/0/1 - Rede Classfull C: 192.168.1.0/24 - 255.255.255.0 - Segmentada em: 64 Sub-Redes.

    Grupo-01:	Rede: 192.168.1.0    PI: 192.168.1.1 - UP: 192.168.1.2    Broadcast: 192.168.1.3
    Grupo-01:	Serial0/0/0 IP: 192.168.1.1/30 --> Grupo-02 Serial0/0/1 IP: 192.168.1.2/30

---

Oitava etapa: Determinação da Interface do Switch do Professor para a Conexão com a Internet

    Grupo-01 - Porta do Switch: 01	(VLAN: 501 - Rede: 200.200.200.0/27)

---

Nona etapa: Determinação das Configurações do Protocolo de Roteamento Dinâmico OSPF

Configuração do OSPF e Endereçamento IPv4 da Interface de Loopback 0 dos Grupos

    Grupo-01	Endereço IPv4 Loopback: 1.1.1.1 255.255.255.255 (Máscara /32 RFC-3021 host subnet)

Configuração do ID Local do Processo do OSPF dos Grupos

    Grupo-01	ID do Processo: 1

Configuração do Router-ID do Processo do OSPF (Loopback) dos Grupos

    Grupo-01	Router ID: 1.1.1.1	(mesmo endereço IPv4 da Loopback)

Declaração das Redes OSPF entre os Grupos

    Grupo-01
	172.16.10.0 0.0.0.255    (SVI do Switch Layer 3)
	172.16.11.0 0.0.0.255    (Bruno)
	172.16.12.0 0.0.0.255    (Erica)
	172.16.13.0 0.0.0.255    (Gabriel)
	172.16.14.0 0.0.0.255    (Wesley)
	172.16.15.0 0.0.0.255    (Rede Sem-Fio do Grupo)
	192.168.1.0 0.0.0.3      (Grupo 01 para Grupo 02)
	192.168.1.20 0.0.0.3     (Grupo 06 para Grupo 01)

---

Décima etapa: Configuração dos Routers e Access Point D-Link, TP-Link ou Linksys

Endereço IPv4 de cada Access Point para o Gerenciamento dos Grupos

    Grupo-01	IPv4: 172.16.15.250 - Máscara: 255.255.255.0

Configuração da Rede Sem-Fio (cuidado com roteador Dual Band 2.4 e 5.0Ghz)

    Grupo-01    SSID: G-01 (G-01-2.4 e G-01-5.0) - Senha: 123@senac

---
