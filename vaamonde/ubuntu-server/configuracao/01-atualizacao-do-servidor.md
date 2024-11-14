01 - Atualizando as listas sources.list do Apt ou Apt-Get no Ubuntu Server

    #Update é utilizado para baixar informações de pacotes de todas as fontes configuradas.
    sudo apt update

02 - Verificando todos os pacotes a serem utilizados no Ubuntu Server

    #List é utilizado para listar todos os software que serão atualizados no sistema.
    sudo apt list --upgradable

03 - Atualizando todos os software no Ubuntu Server

    #Upgrade é utilizado para instalar atualizações disponíveis de todos os pacotes atualmente 
    #instalados no sistema a partir das fontes configuradas via sources.list
    sudo apt upgrade

04 - Forçando uma atualização completa de todos os software e dependências no Ubuntu Server

    #Dist-Upgrade além de executar a função de atualização, também lida de forma inteligente 
    #com as novas dependências das novas versões de pacotes
    sudo apt dist-upgrade

05 - Forçando uma atualização e remoção de software desnecessários no Ubuntu Server

    #Full-Upgrade executa a função de atualização, mas removerá os pacotes atualmente 
    #instalados se isso for necessário para atualizar o sistema como um todo
    sudo apt full-upgrade

06 - Removendo pacotes desnecessários no Ubuntu Server

    #Autoremove é utilizado para remover pacotes que foram instalados automaticamente para 
    #satisfazer dependências de outros pacotes e agora não são mais necessários, pois as 
    #dependências foram alteradas ou os pacotes que precisavam deles foram removidos nesse 
    #meio tempo.
    sudo apt autoremove

07 - Fazendo a limpeza dos repositórios locais e pacotes desnecessários no Ubuntu Server

    #Autoclean como Clean, o autoclean limpa o repositório local de arquivos de pacotes 
    #recuperados. A diferença é que ele remove apenas arquivos de pacotes que não podem 
    #mais ser baixados e são inúteis.
    sudo apt autoclean

08 - Limpando o cache local do sources.list no Ubuntu Server

    #Clean limpa o repositório local de arquivos de pacotes recuperados
    sudo apt clean

    #Reiniciar o servidor para testar as atualizações
    sudo reboot
