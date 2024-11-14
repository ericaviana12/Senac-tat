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
  // ciclo 1
  digitalWrite(4, HIGH);
  digitalWrite(13, HIGH);
  delay(efeito);
  digitalWrite(4, LOW);
  digitalWrite(13, LOW);
  
  // ciclo 2
  digitalWrite(5, HIGH);
  digitalWrite(12, HIGH);
  delay(efeito);
  digitalWrite(5, LOW);
  digitalWrite(12, LOW);
  
  // ciclo 3
  digitalWrite(6, HIGH);
  digitalWrite(11, HIGH);
  delay(efeito);
  digitalWrite(6, LOW);
  digitalWrite(11, LOW);
  
  // ciclo 4
  digitalWrite(7, HIGH);
  digitalWrite(10, HIGH);
  delay(efeito);
  digitalWrite(7, LOW);
  digitalWrite(10, LOW);
  
  // ciclo 5
  digitalWrite(8, HIGH);
  digitalWrite(9, HIGH);
  delay(efeito);
  digitalWrite(8, LOW);
  digitalWrite(9, LOW);
  
  // ciclo 6 - RETORNO
  digitalWrite(10, HIGH);
  digitalWrite(7, HIGH);
  delay(efeito);
  digitalWrite(10, LOW);
  digitalWrite(7, LOW);
  
  // ciclo 7
  digitalWrite(11, HIGH);
  digitalWrite(6, HIGH);
  delay(efeito);
  digitalWrite(11, LOW);
  digitalWrite(6, LOW);
  
  // ciclo 8
  digitalWrite(12, HIGH);
  digitalWrite(5, HIGH);
  delay(efeito);
  digitalWrite(12, LOW);
  digitalWrite(5, LOW);
}
