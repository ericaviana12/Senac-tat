/**
  Controle de um servo motor
  @author Professor Jose de Assis
*/

//incluir uma biblioteca
#include <Servo.h>
//Criar um objeto usando a biblioteca
Servo servo1;

void setup() {
  servo1.attach(9);  //o servo ligado no pino 9 (PWM)
}

void loop() {
  servo1.write(0);  //girar o servo (0 graus) - base de 0 a 180
  delay(1000);
  servo1.write(180);  //girar o servo (180 graus) - base de 0 a 180
  delay(1000);
}
