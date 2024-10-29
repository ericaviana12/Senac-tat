#01_ Instalar o VSCode

#02_ Instalar a Extensão Spell PT-BR

#03_ Clonar o seu repositorio do GitHub
  Comando: git clone https://github.com/ericaviana12/Senac-tat

-----

Configurar o Git Local (repositório clonado)

  Nome de usuário
Comando: git config --global user.name "Erica Viana"

  E-mail do GitHub (obs)
Comando: git config --global user.email "erica.viana.soares@gmail.com"

  Editor de texto
Comando: git config --global core.editor vim

  Verificação de diferenças de arquivos
Comando: git config --global merge.tool vimdiff

  Verificação de cores - por status de erro/ok
Comando: git config --global color.ui true

  Listar configurações
Comando: git config --list

-----

Abrir o Terminal no VSCode: CTRL + J

Salvar texto no arquivo pelo VSCode: CTRL + S

-----

Integração do VSCode com GitHub

Verificar se constam atualizações do site para o clone
  Comando: git pull

Verificar status e mudanças do clone no VSCode
  Comando: git status

Atualizar/adicionar as mudanças feitas no clone
  Comando: git add .

Confirmar atualizações/mudanças feitas no clone
  Comando: git commit -m "Atualizacao"

Integração do clone no diretório local (Linux) ao GitHub
  Comando: git push (após clicar solicita autenticação do login)
