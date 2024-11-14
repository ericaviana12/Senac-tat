01 - Verificando as informações do Locale (Localidade) do Sistema Operacional Ubuntu Server

    #verificando as informações detalhas de localidade do sistema
    sudo localectl

    #verificando as informações de localidades instaladas no sistema 
    #opção do comando locale: -a (all-locales)
    sudo locale -a

02 - Configurando o Locale (Localidade) do Brasil no Sistema Operacional Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: pt_BR.UTF-8" é uma codificação de caractere que indica o uso
    #da língua portuguesa (pt) como falada no Brasil (BR) com a codificação UTF-8. UTF-8 
    #(Unicode Transformation Format - 8 bits) é uma codificação de caracteres que pode 
    #representar qualquer caractere no conjunto Unicode, o que inclui praticamente todos 
    #os caracteres de todas as línguas do mundo.

    #gerando a localidade do Português do Brasil
    sudo locale-gen pt_BR.UTF-8

    #configurando a localidade Português do Brasil
    #opção do comando localectl: set-locale (Set the system locale)
    sudo localectl set-locale LANG=pt_BR.UTF-8

    #atualizando as localidades do Português do Brasil e Linguagem do Sistema
    sudo update-locale LANG=pt_BR.UTF-8 LC_ALL=pt_BR.UTF-8 LANGUAGE="pt_BR:pt:en"

    #recomendado rebootar o sistema para testar as localidades
    sudo reboot

    #verificando as mudanças de localidades do sistema
    #opção do comando locale: -a (all-locales)
    sudo localectl
    sudo locale -a
