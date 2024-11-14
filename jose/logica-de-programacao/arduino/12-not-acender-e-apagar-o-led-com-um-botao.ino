/** 
  Simulador do operador lógico NOT
  Acender e apagar o LED com um único botão
  @author Erica Viana
*/

int botao1, botao2;

void setup() {
  pinMode(13, OUTPUT); // Conexão 13 é para saída
  pinMode(4, INPUT_PULLUP); // Entrada digital
}

void loop() {
  botao1 = digitalRead(4);

  if (botao1 == 0) {
    digitalWrite(13, !digitalRead(13));
  }
  delay(200);
}
