/**
  Controle de um servo motor
  @author Professor Jose de Assis
*/

#include <Servo.h> //incluir a biblioteca de controle do servidor
Servo servo1;   //Criar um objeto usando a biblioteca

int botao1;
int botao2;

void setup() {
  servo1.attach(9);  //servo ligado no pino 9 (PWM)
  pinMode(2, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP);
  servo1.write(90);   //iniciar o servo motor em 90 graus
}

void loop() {
  botao1 = digitalRead(2);  //leitura do botao1 (0 -> botao pressionado)
  botao2 = digitalRead(4);  //leitura do botao2 (0 -> botao pressionado)
  
  //se botao1 pressionado
  if (botao1 == 0) {
    servo1.write(0);
  }
    //se botao2 pressionado
  if (botao2 == 0) {
    servo1.write(180);
  }
}
