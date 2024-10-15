/** 
  Jogo - Genius
  @author Erica Viana
*/

void setup() {
  // Buzzer
  pinMode(6, OUTPUT);
}

void loop() {
  tone(6, 262);
  delay(200);
  noTone(6);
  delay(200);
  delay(1000);
}
