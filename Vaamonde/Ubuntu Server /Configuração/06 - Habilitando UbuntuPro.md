01 - Verificando as Informações do Sistema Operacional Ubuntu Server

    #verificando as informações da identificação do Sistema Operacional
    sudo cat /etc/os-release

    #verificando as informações específicas do Sistema Operacional
    sudo cat /etc/lsb-release

02 - Atualizando o Sistema Operacional Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: recomendo fazer um upgrade completo no servidor antes de
    #adicionar a Licença do Ubuntu Pro.
    sudo apt update
    sudo apt upgrade
    sudo apt full-upgrade
    sudo apt dist-upgrade
    sudo apt autoremove
    sudo apt autoclean

03 - Criando sua conta no Ubuntu One para registrar o Ubuntu Pro no Ubuntu Server

    Acesse o site: https://login.ubuntu.com/

    Clique em: I don’t have an Ubuntu One account
    Preencha os campos: 
	    Please type your email: (DIGITE_SEU_EMAIL)
	    Full name: (DIGITE SEU NOME COMPLETO)
	    Username: (DIGITE O SEU USUÁRIO)
	    Choose password: (DIGITE SUA SENHA)
	    Re-type password: (CONFIRME SUA SENHA)
	    Marque a opção: I have read and accept the Ubuntu One terms of service, data privacy policy and Canonical's SSO privacy notice.
	    Clique em: <Create account>

    Finalize os procedimentos acessando seu email para ativar a sua conta no Ubuntu One.
	    Are you sure you want to confirm and validate this email address?
    <Sim, tenho certeza>

04 - Criando uma Assinatura do Ubuntu Pro Free para uso Pessoal

    Acesse o site: https://ubuntu.com/pro/dashboard

    Faça a autenticação com a sua conta criada no Ubuntu One;
	    Personal Data Request: <Yes, log me in>

    Será mostrado no campo Free Personal Token o seu token;
	    Copiar o seu Token no campo: Token.

05 - Verificando a versão do Ubuntu Advantage Tools no Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: a Canonical recomenda que a versão do Ubuntu Pro Client seja 
    #>= a versão 27.13.x

    #verificando a versão do cliente do Ubuntu Pro Client
    sudo pro --version

06 - Ativando a sua Assinatura do Ubuntu Pro no Ubuntu Server

    #adicionando o Token da licença do Ubuntu Pro
    sudo pro attach [COLAR O SEU TOKEN]

07 - Verificando os repositórios de origem das atualizações no Ubuntu Server

    #verificando o status do Ubuntu Pro
    sudo pro status

    #verificando os status dos pacotes de segurança do Ubuntu Pro
    sudo pro security-status

    #verificando os status dos pacotes de segurança ESM (Enterprise Service Manager) do Ubuntu Pro
    sudo pro security-status --esm-apps

    #verificando as informações de Fix (correção) dos CVE (Common Vulnerabilities and Exposures)
    sudo pro fix CVE-2023-23518

08 - Habilitando outros Serviços do Ubuntu Pro de Atualização

    #OBSERVAÇÃO IMPORTANTE: por padrão após habilitar o Token do Ubuntu Pro os principais 
    #serviços são habilitados, sendo o: ESM-INFRA e o Livepatch, caso queira habilitar mais 
    #serviços veja a lista abaixo:

    01) cc-eal..........: Relacionado à conformidade com os Critérios Comuns EAL2;

    02) cis.............: Ferramentas para conformidade automatizada com o Center of Internet 
    Security (CIS) e seus benchmarks;

    03) esm-infra.......: Manutenção Estendida de Segurança do Ubuntu; Mais 5 (total de 10) anos
    de atualizações de segurança para versões LTS;

    04) esm-apps........: ESM do Ubuntu, mas para aplicativos.

    05) fips............: Relacionado à conformidade com os Padrões Federais de Processamento de 
    Informações (FIPS);

    06) fips-updates....: Atualizações de segurança para fips;

    07) livepatch.......: Ferramenta de correção ao vivo do Kernel do Ubuntu (livepatch);

    08) realtime-kernel.: Obtenha um Kernel em tempo real (se você não sabe o que é, provavelmente
    não precisa dele);

    09) ros.............: Ubuntu ajustado para Robótica, sensatamente chamado de Sistema Operacional 
    de Robô;

    10) ros-updates.....: Atualizações de segurança para o sistema operacional do robô;

    11) usg.............: Ferramentas para conformidade de segurança e auditoria do sistema.

    #habilitando o suporte ao ESM-APPS no Ubuntu Pro
    sudo pro enable esm-apps

    #verificando o status do Ubuntu Pro
    sudo pro status

09 - Atualizando sistema com o suporte do Ubuntu Pro no Ubuntu Server

    #OBSERVAÇÃO IMPORTANTE: após adicionar a licença do Ubuntu Pro é recomendado fazer
    #um upgrade completo do sistema para testar o Token e as novas listas do sources.list
    sudo apt clean
    sudo apt update
    sudo apt upgrade
    sudo apt full-upgrade
    sudo apt dist-upgrade
    sudo apt autoremove
    sudo apt autoclean
    sudo reboot
