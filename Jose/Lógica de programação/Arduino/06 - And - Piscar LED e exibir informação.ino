/** 
  Simulador do operador lógico AND
  Prensa com controle bi manual
  @author Erica Viana
*/

int led;

void setup() {
  pinMode(13, OUTPUT); // Conexão 13 é para saída
  Serial.begin(9600);
}

void loop() {
  digitalWrite(13, HIGH);
  led = digitalRead(13); // Leitura da porta digital (0 ou 1)
  Serial.println(led);
  delay(1000); // 1000ms = 1 segundo
  digitalWrite(13, LOW);
  led = digitalRead(13); // Leitura da porta digital (0 ou 1)
  Serial.println(led);
  delay(1000);
}
