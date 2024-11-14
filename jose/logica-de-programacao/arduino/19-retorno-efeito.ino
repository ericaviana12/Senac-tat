/**
  Efeito luminoso
  @author Erica Viana
  */

int efeito = 60;

void setup() {
  for (int i = 4; i < 14; i++) {
    pinMode(i, OUTPUT);
  }
}

void loop() {
  // Loop para acender os LEDs de 4 a 13
  for (int i = 4; i < 14; i++) {
    digitalWrite(i, HIGH);
    delay(efeito);
    digitalWrite(i, LOW);
  }

  // Loop para acender os LEDs de 13 a 4
  for (int i = 13; i > 3; i--) {
    digitalWrite(i, HIGH);
    delay(efeito);
    digitalWrite(i, LOW);
  }
}
