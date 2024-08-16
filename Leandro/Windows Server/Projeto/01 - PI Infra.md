Projeto de Server REAL NOITE – Parte 1


Implantação

- 1 -	Instalar um Windows 2012 Server Data Center (WMNK4-TBQF7-RXDY7-7RB89-M97JY) em 1 Notebook 
- 2 -	Instalar uma estação de Trabalho Windows 10 PRO **Note 1**
- 3 -	Instalar uma estação de Trabalho Windows 10 PRO **Note 2**
- 4 -	Ip do Windows Server = **192.168.1.10** 255.255.255.0 Hostname = **SRVINFRA**
- 5 -	Instalar o AD = infra.senac com o DNS integrado.
- 6 -	Instalar o **DHCP** para distribuir endereçamento para as estações. **192.168.1.100** até **192.168.1.250**, **Gateway 192.168.1.254**
- 7 -	Ingressar as **2 Estações de Trabalho no seu Domínio (Note1 e Note2)**.

---

Administração

##1 -	Criar uma **OU – INFRA**
###2 -	Criar os **usuários**:
  a.	Ana Paula Gomes dos Santos
  b.	André Luiz Matos Pereira
  c.	Diego de Oliveira Galdino
  d.	Felipe dos Santos Aguiar Pereira
  e.	Gilson Rodrigues de Paula
  f.	Higilda Joana Muendo
  g.	Hugo Rosendo Mota da Silva
  h.	Jennifer Santos de Oliveira
  i.	Jessica Gomes Quadro
  j.	Joao Henrique Oliveira Vieira Santos
  k.	Jose Davi Alves de Moraes
  l.	Jose Eriberto dos Santos Junior
  m.	Lucas de Oliveira Pinto
  n.	Lucas Eduardo Silva da Cunha
  o.	Marcos Rocha Silva
  p.	Marcos Samuel de Lira Oliveira
  q.	Mateus de Oliveira Silva
  r.	Matheus Pinheiro de Oliveira
  s.	Mauricio Afonso Sena Silva
  t.	Meriani Garcia Ferreira Viana
  u.	Nayara Silva Onofre de Lima
  v.	Paulo Ricardo Pereira da Silva
  w.	Paulo Roberto Luz de Souza
  x.	Raphael Mestre Oliveira
  y.	Ricardo Gomes de Souza
  z.	Weverton Alves da Silva
- 3 -	Criar o Usuário: ADMINFRA com direitos de Administrador do Domínio.
- 4 -	Criar o **Grupo Local** Segurança **Professores** e inserir os usuários: 
  a.	Ana Paula Gomes dos Santos
  b.	André Luiz Matos Pereira
  c.	Diego de Oliveira Galdino
- 5 -	Criar o **Grupo Local** Segurança **Coordenadores** e inserir os usuários: 
  a.	Jessica Gomes Quadro
  b.	Joao Henrique Oliveira Vieira Santos
- 6 -	Criar o **Grupo Local** Segurança **Suporte** e inserir os usuários: 
  a.	Mauricio Afonso Sena Silva
  b.	Meriani Garcia Ferreira Viana
- 7 -	Criar o **Grupo Local** Segurança **Diretoria** e inserir o usuário: 
  a.	Raphael Mestre Oliveira
- 8 -	Criar o **Grupo Local** Segurança **Alunos** e inserir os usuários: 
  a.	Ricardo Gomes de Souza
  b.	Weverton Alves da Silva
  c.	Nayara Silva Onofre de Lima
  d.	Paulo Ricardo Pereira da Silva
  e.	Paulo Roberto Luz de Souza
  f.	Jose Davi Alves de Moraes
  g.	Jose Eriberto dos Santos Junior
  h.	Lucas de Oliveira Pinto
  i.	Lucas Eduardo Silva da Cunha
  j.	Marcos Rocha Silva
  k.	Marcos Samuel de Lira Oliveira
  l.	Mateus de Oliveira Silva
  m.	Matheus Pinheiro de Oliveira
  n.	Felipe dos Santos Aguiar Pereira
  o.	Gilson Rodrigues de Paula
  p.	Higilda Joana Muendo
  q.	Hugo Rosendo Mota da Silva
  r.	Jennifer Santos de Oliveira
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
