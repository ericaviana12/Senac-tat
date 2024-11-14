/**
  Sensor de distância
  @author Erica Viana
*/

// Uso de biblioteca para media a distância do sensor
#include <HCSR04.h>
UltraSonicDistanceSensor sensor(13,12); // (Trig, Echo)
float distancia;

void setup() {
  Serial.begin(9600);

}

void loop() {
  distancia = sensor.measureDistanceCm();
  Serial.print("Distância: ");
  Serial.print(distancia);
  Serial.println("cm");
  delay(500);

}
