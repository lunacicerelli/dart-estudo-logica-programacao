/*1.  Null

Crie um algoritmo que solicite um número inteiro ao usuário e exida a tabuada deste
número, valide se o valor informado pode ser convertido utilizando a função de
conversão int.tryParse. Caso a validação falher exiba uma mensagem de erro e
solicite novamente o valor.

*/


import 'dart:io';

void main() {

  int? numero;

 while (numero == null){
   print('Digite um número: ');
     numero = int.tryParse(stdin.readLineSync()!);
      
   if (numero == null){
    print('Valor inválido');
   }else{

   // if(int i = 1 ; i <=10; i++); AJUSTAR

  //  pode estar nula sempre declara com ?
}

}
}