/** 
  Simulador do operador lógico AND
  Prensa com controle bi manual
  @author Erica Viana
*/

void setup() {
  pinMode(13, OUTPUT); // Conexão 13 é para saída
  Serial.begin(9600);
}

void loop() {
  digitalWrite(13, HIGH);

}
