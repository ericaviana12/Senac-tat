Placas de rede no VirtualBox

---

Material de apoio da aula - Fascículos de redes e computadores
 - https://cartilha.cert.br/fasciculos/ opção #redes

---

Entendendo as diferenças das Placas de Rede do VirtualBOX

 - A_ NAT.....: Network Address Translation (Tradução de endereço de rede)
 
https://www.virtualbox.org/manual/ch06.html#network_nat

O serviço Network Address Translation (NAT) funciona de forma semelhante a um roteador doméstico, agrupando os sistemas que o utilizam em uma rede e evitando que sistemas fora desta rede acessem diretamente os sistemas dentro dela, mas permitindo que os sistemas internos se comuniquem entre si e com sistemas externos usando TCP e UDP sobre IPv4 e IPv6.

 - B_ BRIDGE..:
 
https://www.virtualbox.org/manual/ch06.html#network_bridged

Com a rede em ponte, o Oracle VM VirtualBox usa um driver de dispositivo no sistema host que filtra os dados do seu adaptador de rede física. Esse driver é, portanto, chamado de driver de filtro de rede . Isso permite que o Oracle VM VirtualBox intercepte dados da rede física e injete dados nela, criando efetivamente uma nova interface de rede em software. Quando um convidado está usando essa nova interface de software, o sistema host parece que o convidado estava fisicamente conectado à interface usando um cabo de rede. O host pode enviar dados ao convidado por meio dessa interface e receber dados dela. Isso significa que você pode configurar o roteamento ou a ponte entre o convidado e o restante da sua rede.

 - C_ INTERNA.:
 
https://www.virtualbox.org/manual/ch06.html#network_internal

A rede interna é semelhante à rede em ponte, pois a VM pode se comunicar diretamente com o mundo externo. No entanto, o mundo exterior está limitado a outras VMs no mesmo host que se conectam à mesma rede interna.

Embora tecnicamente tudo o que pode ser feito usando redes internas também possa ser feito usando redes em ponte, há vantagens de segurança com redes internas. No modo de rede em ponte, todo o tráfego passa por uma interface física do sistema host. Portanto, é possível anexar um sniffer de pacotes como o Wireshark à interface do host e registrar todo o tráfego que passa por ele. Se, por algum motivo, você preferir que duas ou mais VMs na mesma máquina se comuniquem de forma privada, ocultando seus dados do sistema host e do usuário, a rede em ponte não será uma opção.
