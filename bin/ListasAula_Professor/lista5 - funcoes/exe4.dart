/*4. Faça uma função que receba dois números inteiros e retorne o menor deles.
*/

void main() {
  int valor = retornaMenor(-10, 5);
  print(valor);
}

int retornaMenor(int valor1, int valor2){
  if(valor1 < valor2){
    return valor1;
  }
  return valor2;
}

// int retornaMenor(int valor1, int valor2){
//   return (valor1 < valor2) ? valor1 : valor2;