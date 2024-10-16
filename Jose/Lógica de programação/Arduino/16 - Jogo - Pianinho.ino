/** 
  Jogo - Pianinho
  @author Erica Viana
*/

int botao1, botao2, botao3, botao4; // Variáveis

void setup() { // Função executada uma vez quando o programa começa. É usada para inicializar variáveis, configurar pinos e iniciar comunicação serial
  pinMode(6, OUTPUT);         // Buzzer
  pinMode(2, OUTPUT);         // Led 1 - Nota dó 262
  pinMode(7, OUTPUT);         // Led 2 - Nota ré 294
  pinMode(3, OUTPUT);         // Led 3 - Nota mi 330
  pinMode(5, OUTPUT);         // Led 4 - Nota fa 349
  pinMode(8, INPUT_PULLUP);   // Botao 1 - Nota dó 262
  pinMode(9, INPUT_PULLUP);   // Botao 2 - Nota ré 294
  pinMode(10, INPUT_PULLUP);  // Botao 3 - Nota mi 330
  pinMode(11, INPUT_PULLUP);  // Botao 4 - Nota fa 349
}

void loop() { // Função executada repetidamente enquanto o Arduino estiver ligado. Ela contém o código que será executado continuamente
  botao1 = digitalRead(8);   //0-> botao pressionado | 1-> botao nao pressionado
  botao2 = digitalRead(9);   //0-> botao pressionado | 1-> botao nao pressionado
  botao3 = digitalRead(10);  //0-> botao pressionado | 1-> botao nao pressionado
  botao4 = digitalRead(11);  //0-> botao pressionado | 1-> botao nao pressionado
  if (botao1 == 0) {
    digitalWrite(2, HIGH);
    tone(6, 262);
  } else if (botao2 == 0) {
    digitalWrite(7, HIGH);
    tone(6, 294);
  } else if (botao3 == 0) {
    digitalWrite(3, HIGH);
    tone(6, 330);
  } else if (botao4 == 0) {
    digitalWrite(5, HIGH);
    tone(6, 349);
  } else {
    digitalWrite(2, LOW);
    digitalWrite(7, LOW);
    digitalWrite(3, LOW);
    digitalWrite(5, LOW);
    noTone(6);
  }
}
