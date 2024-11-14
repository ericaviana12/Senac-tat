/**
Simples Semaforo
 @author Professor Jose de Assis
 */

int tempo = 2000; //criando uma variavel numerica e atribuino o valo 2000

void setup() {
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
}

void loop() {
  digitalWrite(2, LOW); //verde
  digitalWrite(3, HIGH); //amarelo
  digitalWrite(4, LOW); //vermellho 
  delay(tempo);


  digitalWrite(3, LOW);
  digitalWrite(4, HIGH);
  delay(tempo);

  digitalWrite(2, HIGH);
  digitalWrite(4, LOW);
  delay(tempo);
}
