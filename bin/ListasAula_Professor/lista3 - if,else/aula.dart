
void main() {
  int opcao = 1;

  if(opcao >= 1){
    print('Opção 1');
  }else if(opcao == 2){
    print('Opção 2');
  }else if(opcao == 3){
    print('Opção 3');
  }else{
    print('Opção inválida');
  }

  switch(opcao){
    case 1:
      print('Opção 1');
      break;
    case 2:
      print('Opção 2');
      break;
    case 3:
      print('Opção 3');
      break;
    default:
      print('Opção inválida');
  }
  print('Fim');
}