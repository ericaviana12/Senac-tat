/**
 Sensor de luminosidade
 @author Erica Viana
*/


int sensor; // Variável que vai armazenar o valor do sensor

void setup() {
  Serial.begin (9600); // Para o Arduino conseguir conversar com o sensor
}

void loop() {
	sensor = analogRead(A0);   //leitura do sensor na porta A0 (0 a 1024)
	Serial.println(sensor);    //escrever no terminal o valor da variavel
}
