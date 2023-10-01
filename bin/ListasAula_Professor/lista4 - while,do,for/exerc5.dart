/*5. (do-while) Escreva um algoritmo onde o usuário deve informar a senha correta
“1234”, será permitido até 3 tentativas de senha inválida, após isto exibir “Conta
bloqueada”.
*/


import 'dart:io';

void main() {
  const numTentativas = 3;
  const senhaCorreta = '1234';

  int tentativas = numTentativas;
  bool senhaValida = false;
  
  do {
    print('Informe sua senha');
    String senha = stdin.readLineSync()!;
    if(senha == senhaCorreta){
      senhaValida = true;
      //break;
    }else{
      print('Senha inválida');
    }
  //} while(--tentativas > 0);
  } while(--tentativas > 0 && senhaValida == false);

  if(senhaValida == false){
    print('Conta bloqueada');
  }
}