

void main() {


int contador = 1;

  imprimeFamilia(contador++);
  imprimeFamilia(contador++);
  imprimeFamilia(contador++);


}

void imprimeFamilia(int adicional) {
  imprimeLuna(adicional);
  imprimePatrick(adicional);
}

void imprimePatrick(int numero) {
  
  print('Patrick$numero');
}

void imprimeLuna(int numero) {
  print('Luna$numero');
}
