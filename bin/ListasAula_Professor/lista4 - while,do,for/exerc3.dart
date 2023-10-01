/*3. (While, for) Escreva um algoritmo para encontrar todos os números pares entre 1 e
1000;
*/

void main() {
  // int contador = 1;
  // while(contador <= 1000){
  //   if(contador % 2 == 0){
  //     print('Número: $contador');
  //   }
  //   contador++;
  // }

  for(int count = 1 ; count <= 1000 ; count++){
    if(count % 2 == 0){
      print('Número: $count');
    }
  }
}