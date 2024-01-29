/**
  Acionamento de um LED com botao
  @author Professor Jose de Assis
*/

int botao;  //cria uma variavel de nome botão do tipo numerico inteiro

void setup() {
  pinMode(13, OUTPUT);
  pinMode(3, INPUT_PULLUP);  //configurando o pino 3 como saída protegida
}

void loop() {
  botao = digitalRead(3);  //0 -> botao pressionado | 1 -> boto nao pressionado
  //se o botao for pressionado
  if (botao == 0) {
    digitalWrite(13, HIGH);
  }
}
