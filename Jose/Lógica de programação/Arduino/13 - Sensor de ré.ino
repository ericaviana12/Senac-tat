/**
  Sensor de distância
  @author Erica Viana
*/

#include <HCSR04.h> // Uso de biblioteca "HCSR04.h" para medir a distância usando o sensor
UltraSonicDistanceSensor sensor(13, 12);  // Conexão Trig (13) e Echo (12) - Esses pinos são utilizados pelo sensor para medir a distância
float distancia; // Float - Declaração da variável "distancia" e exibe a medida de distância em centímetros

void setup() { // Função executada uma vez quando o programa começa. É usada para inicializar variáveis, configurar pinos e iniciar comunicação serial
  Serial.begin(9600); // Comunicação serial, permitindo que o Arduino envie e receba dados através da porta serial a uma taxa de 9600 bps
  pinMode(11, OUTPUT);  // Conexão do Led no Arduino (11)
  pinMode(6, OUTPUT);   // Conexão do Buzzer no Arduino (6)
}

void loop() { // Função executada repetidamente enquanto o Arduino estiver ligado. Ela contém o código que será executado continuamente
  distancia = sensor.measureDistanceCm(); // measureDistanceCm() - Função que mede a distância em centímetros e armazena o valor na variável distancia
  Serial.print("Distância: "); // Exibir no Serial Monitor a string "Distância: "
  Serial.print(distancia); // Exibir no Serial Monitor o resultado da variável distância
  Serial.println(" cm"); // Exibir no Serial Monitor a string " cm" - A função Serial.println exibe o valor e move o cursor para uma nova linha no Serial Monitor
  delay(300); // Faz o programa pausar por 300 milissegundos (0,3 segundos) antes de continuar a execução do loop, evitando leituras excessivamente rápidas
  if (distancia > 0 && distancia < 30) { // Condicional - se a distância medida está entre 0 e 30 centímetros, o código será executado
    digitalWrite(11, HIGH); // Conexão do Led no Arduino (11) - Acionamento do Led
    tone(6, 300); // Conexão do Buzzer no Arduino (6) - para gerar o som do Buzzer
    delay(200); // O programa pausa novamente por 200 milissegundos
    digitalWrite(11, LOW); // Conexão do Led no Arduino (11) - Desliga o Led
    noTone(6); // Conexão do Buzzer no Arduino (6) - para desligar o som do Buzzer
    delay(200); // O programa pausa novamente por 200 milissegundos
  } else { // Se a condição no if não for atendida, o código a seguir será executado
    digitalWrite(11, LOW); // Conexão do Led no Arduino (11) - Se a distância não estiver entre 0 e 30 cm, o Led permanece desligado
  }
}
