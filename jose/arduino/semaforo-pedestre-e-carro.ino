  //Declarando variáveis dos pinos + botão
int CarroVermelho = 2;
int CarroAmarelo = 4;
int CarroVerde = 7;
int PedestreVerde = 8;
int PedestreVermelho = 12;
int Botao = 13;
 
  // Declarando funcionamento dos pinos (Acender LED)
void setup(){
	pinMode(2, OUTPUT);
  	pinMode(4, OUTPUT);
              pinMode(7, OUTPUT);
  	pinMode(8, OUTPUT);
  	pinMode(12, OUTPUT);
  	pinMode(13, INPUT_PULLUP); // Botão -> Input
}
	
void loop(){ // Declarando ordem de acender e apagar LEDs
  	Botao = digitalRead(13); // Declarando botão.
 	if (Botao == 0){ // Pressionamento do botão.
     delay(3000); // Não ir para o amarelo muito rápido.
    digitalWrite(CarroVerde, LOW); // Apagar verde carro.
    digitalWrite(CarroAmarelo, HIGH); // Acender amarelo em seguida.
    delay(4000); // Tempo do amarelo > vermelho.
    digitalWrite(PedestreVermelho, LOW); 
    digitalWrite(CarroAmarelo, LOW);
    digitalWrite(CarroVermelho, HIGH);
    digitalWrite(PedestreVerde, HIGH);
    delay(6000);
    digitalWrite(PedestreVerde, LOW);
    digitalWrite(PedestreVermelho, HIGH);
    delay(4000); // Tempo necessário para pedestres conseguirem atravessar com segurança.
    digitalWrite(CarroVermelho, LOW);
    digitalWrite(CarroVerde, HIGH);
      
     } else { // Tudo aqui só irá acontecer repetidamente caso o botão não seja pressionado.
    digitalWrite(CarroVerde, HIGH); // Deixar acessa, carros passando.
    digitalWrite(CarroAmarelo, LOW); // Botão não foi pressionado.
    digitalWrite(CarroVermelho, LOW); // Não necessário, carros passando.
    digitalWrite(PedestreVermelho, HIGH); // Deixar acessa, perigo.
    digitalWrite(PedestreVerde, LOW); // Carros passando, perigo.
 }
