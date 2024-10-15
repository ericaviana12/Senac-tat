/** 
  Jogo - Pianinho
  @author Erica Viana
*/

int botao;

void setup() {
  // Buzzer
  pinMode(6, OUTPUT);
  pinMode(2, OUTPUT);        // Nota dó
  pinMode(8, INPUT_PULLUP);  // Nota dó
  Serial.begin(9600);
}

void loop() {
  tone(6, 262);
  delay(200);
  noTone(6);
  delay(200);
  delay(1000);
  botao = digitalRead(8);  //0-> botao pressionado | 1-> botao nao pressionado
  if (botao == 0) {
    digitalWrite(2, HIGH);
  } else {
    digitalWrite(2, LOW);
  }
}
