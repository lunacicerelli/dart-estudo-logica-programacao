import 'dart:io';

int leInt(String mensagem) {
  print(mensagem);
  return int.parse(stdin.readLineSync()!);
}

double leDouble(String mensagem) {
  print(mensagem);
  return double.parse(stdin.readLineSync()!);
}

String leString(String mensagem) {
  print(mensagem);
  return stdin.readLineSync()!;
}

void main() {
  int valor = leInt('infome um valor');



  print(valor);
}
