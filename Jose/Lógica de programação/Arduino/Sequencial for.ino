/** 
  Sequencial de Leds (Laço for)
  @author Erica Viana
*/

void setup() {
  // Define os pinos 4 a 13 como saída
  for (int i = 4; i <= 13; i++) {
    pinMode(i, OUTPUT);
  }
}

void loop() {
  // Acende e lê os LEDs do pino 4 ao 13
  for (int i = 4; i <= 13; i++) {
    digitalWrite(i, HIGH);  // Acende o LED
  }
}
