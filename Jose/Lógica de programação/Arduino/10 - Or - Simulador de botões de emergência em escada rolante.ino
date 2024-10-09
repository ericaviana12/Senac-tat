/** 
  Simulador do operador lógico OR
  Botões de emergência de escada rolante
  @author Erica Viana
*/

int botao1, botao2;

void setup() {
  pinMode(13, OUTPUT); // Conexão 13 é para saída
  pinMode(4, INPUT_PULLUP); // Entrada digital
  pinMode(3, INPUT_PULLUP);
  digitalWrite(13, HIGH);
}

void loop() {
  botao1 = digitalRead(4);  // 0 -> botao pressionado | 1 -> boto nao pressionado
  botao2 = digitalRead(3);
  if (botao1 == 0 || botao2 == 0) {
    digitalWrite(13, LOW); // Acender o LED
    }
}
