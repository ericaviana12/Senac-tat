/**
 Acionamento de um LED com botao - acende e apaga - função "else"
 @author Professor Jose de Assis
*/
 
int botao;  // cria uma variavel de nome 'botao' do tipo numerico inteiro
 
void setup() {
  pinMode(13, OUTPUT);       //ligar led na casa da protoboard
  pinMode(3, INPUT_PULLUP);  //configurar o pino 3 como saída protegida
  Serial.begin(9600);        //ativar a comunicacao serial
}
 
void loop() {
  botao = digitalRead(3);  //0-> botao pressionado | 1-> botao nao pressionado
  if (botao == 0) {
    digitalWrite(13, HIGH);
  } else {
    digitalWrite(13, LOW);
  }
}
