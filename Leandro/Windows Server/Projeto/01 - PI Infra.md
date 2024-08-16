# Projeto de Server real – Parte 1

## Implantação

- 1 -	Instalar um Windows 2012 Server Data Center (WMNK4-TBQF7-RXDY7-7RB89-M97JY) em 1 Notebook

- 2 -	Instalar uma estação de Trabalho Windows 10 PRO **Note 1**

- 3 -	Instalar uma estação de Trabalho Windows 10 PRO **Note 2**

- 4 -	Ip do Windows Server = **192.168.1.10** 255.255.255.0 Hostname = **SRVINFRA**

- 5 -	Instalar o AD = infra.senac com o DNS integrado.

- 6 -	Instalar o **DHCP** para distribuir endereçamento para as estações. **192.168.1.100** até **192.168.1.250**, **Gateway 192.168.1.254**

- 7 -	Ingressar as **2 Estações de Trabalho no seu Domínio (Note1 e Note2)**.

## Administração

- 1 -	Criar uma **OU – INFRA**
  
- 2 -	Criar os **usuários**:
1.	Ana Paula Gomes dos Santos
2.	André Luiz Matos Pereira
3.	Diego de Oliveira Galdino
4.	Felipe dos Santos Aguiar Pereira
5.	Gilson Rodrigues de Paula
6.	Higilda Joana Muendo
7.	Hugo Rosendo Mota da Silva
8.	Jennifer Santos de Oliveira
9.	Jessica Gomes Quadro
10.	Joao Henrique Oliveira Vieira Santos
11.	Jose Davi Alves de Moraes
12.	Jose Eriberto dos Santos Junior
13.	Lucas de Oliveira Pinto
14.	Lucas Eduardo Silva da Cunha
15.	Marcos Rocha Silva
16.	Marcos Samuel de Lira Oliveira
17.	Mateus de Oliveira Silva
18.	Matheus Pinheiro de Oliveira
19.	Mauricio Afonso Sena Silva
20.	Meriani Garcia Ferreira Viana
21.	Nayara Silva Onofre de Lima
22.	Paulo Ricardo Pereira da Silva
23.	Paulo Roberto Luz de Souza
24.	Raphael Mestre Oliveira
25.	Ricardo Gomes de Souza
26.	Weverton Alves da Silva

- 3 -	Criar o Usuário: ADMINFRA com direitos de Administrador do Domínio.

- 4 -	Criar o **Grupo Local** Segurança **Professores** e inserir os usuários:  
1.	Ana Paula Gomes dos Santos
2.	André Luiz Matos Pereira
3.	Diego de Oliveira Galdino

- 5 -	Criar o **Grupo Local** Segurança **Coordenadores** e inserir os usuários:  
1.	Jessica Gomes Quadro
2.	Joao Henrique Oliveira Vieira Santos

- 6 -	Criar o **Grupo Local** Segurança **Suporte** e inserir os usuários:  
1.	Mauricio Afonso Sena Silva
2.	Meriani Garcia Ferreira Viana

- 7 -	Criar o **Grupo Local** Segurança **Diretoria** e inserir o usuário:  
1.	Raphael Mestre Oliveira

- 8 -	Criar o **Grupo Local** Segurança **Alunos** e inserir os usuários:  
1.	Ricardo Gomes de Souza
2.	Weverton Alves da Silva
3.	Nayara Silva Onofre de Lima
4.	Paulo Ricardo Pereira da Silva
5.	Paulo Roberto Luz de Souza
6.	Jose Davi Alves de Moraes
7.	Jose Eriberto dos Santos Junior
8.	Lucas de Oliveira Pinto
9.	Lucas Eduardo Silva da Cunha
10.	Marcos Rocha Silva
11.	Marcos Samuel de Lira Oliveira
12.	Mateus de Oliveira Silva
13.	Matheus Pinheiro de Oliveira
14.	Felipe dos Santos Aguiar Pereira
15.	Gilson Rodrigues de Paula
16.	Higilda Joana Muendo
17.	Hugo Rosendo Mota da Silva
18.	Jennifer Santos de Oliveira

- 9 -	**Todos os Usuários têm Pasta Base** centralizada no Servidor com Segurança.

- 10 -	**Usuários NÃO visualizem as pastas dos outros na PASTA BASE**

- 11 -	O usuário **Gilson** loga de **manhã e tarde** de segunda a sexta.

- 12 -	O usuário **Higilda** loga de **tarde e noite** de segunda a sábado.

- 13 -	O usuário **Felipe** loga somente na **Estação de Trabalho Note300 e Note400**

- 14 -	A conta do Usuário **Nayara vence** em **15/12/2024**

- 15 -	Criar uma **PASTA – Ex-Alunos com um conteúdo de mais de 100 MB** e **Compactar o Conteúdo** com acesso somente dos Coordenadores e Diretoria.

- 16 -	Criar a Pasta **Projeto** e aplicar **Criptografia** com acesso exclusivo ao Grupo **Coordenadores (e testar com 2 usuários)**.  

- 17 -	Criar uma **PASTA – Financeiro** onde os **Coordenadores têm RW** com **exceção** da Jessica.

- 18 -	Criar uma **PASTA – Relatorios** onde os **Professores têm RW** com **exceção** da Ana Paula.

- 19 -	Criar e Compartilhar as Pastas com as seguintes permissões (administradores CT).


|	Pasta	|	Professores	|	Coordenadores	|	Suporte	|	Diretoria	|	Alunos	|
|	:--	|	:--	|	:--	|	:--	|	:--	|	:--	|
|	Aulas	|	RW	|	R	|	R	|	x	|	R	|
|	Provas	|	RW	|	RW	|	R	|	x	|	x	|
|	Alunos	|	RW	|	R	|	RW	|	x	|	RW	|
|	Trabalhos	|	RW	|	R	|	R	|	x	|	RW	|
|	Coordenacao	|	x	|	RW	|	R	|	x	|	x	|
|	Diretoria	|	x	|	X	|	X	|	RW	|	x	|
|	Suporte	|	x	|	X	|	RW	|	x	|	x	|
|	Softwares	|	x	|	X	|	RW	|	x	|	x	|
|	Publica	|	RW	|	RW	|	RW	|	RW	|	RW	|
|	Turmas	|	R	|	R	|	R	|	x	|	RW	|
