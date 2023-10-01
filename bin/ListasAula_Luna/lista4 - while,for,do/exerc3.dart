/*3. (While, for) Escreva um algoritmo para encontrar todos os números pares entre 1 e
1000;
*/

void main() {
 
  int contador = 2;
  while (contador <= 1000) {
    print('Contador $contador');
//  contador = contador + 2;
    contador += 2;
  }

  
  for (int contador = 0; contador <= 1000; contador++) {
    if (contador %2 == 0) {
      print('Esse número é:$contador');
    }
   
  }
}

