/**
  Sensor ultrassonico HC-SR04 - Teste de distância
  @author Professor Jose de Assis
  ----------------------------------------
  | Sensor  | Arduino   |
  | Vcc     |   5V      |
  | Trig    |   A5      |
  | Echo    |   A4      |
  | GND     |   GND     |
*/

//variaveis usadas para medir a distancia
int distancia;  //cm
long sensor;    //variavel de precisao - numeros nao inteiros (apoio ao calculo)

void setup() {
  Serial.begin(9600);
  pinMode(A4, INPUT);   //echo
  pinMode(A5, OUTPUT);  //trig
}

void loop() {
  distancia = ping();  //invocar/chamar a funcao ping() e armazenar o valor de retorno na variavel distancia
  Serial.println(distancia);
}

//funcao usada para o disparo do pulso e calculo da distancia
//uma funcao -> bloco de codigo reutilizavel
long ping() {
  digitalWrite(A5, LOW);  //zerar
  delayMicroseconds(2);
  digitalWrite(A5, HIGH);  //disparar o pulso sonoro
  delayMicroseconds(10);
  sensor = pulseIn(A4, HIGH);  //receber o retorno do pulso
  return (sensor / 29) / 2;    //calcular o valor em cm
}
