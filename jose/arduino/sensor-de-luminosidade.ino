/**
 Sensor de luminosidade
 @author Professor Jose de Assis
*/

int sensor;  //variavel que vai receber o sensor de luminosidade

void setup() {
  pinMode(13, OUTPUT);       //ligar led na casa 13 da protoboard
  Serial.begin(9600);        //ativar a comunicacao serial
}
 
void loop() {
  sensor = analogRead(A0);   //leitura do sensor (0 a 1024)
  Serial.println(sensor);    //escrever no terminal o valor da variavel botao
}
