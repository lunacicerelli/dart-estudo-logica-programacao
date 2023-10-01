
import 'dart:io';

void main() {
  print('Informe um número:');
  String numero = stdin.readLineSync()!;
  int valor = int.parse(numero);
  int antecessor = valor - 1;
  int posterior = valor + 1;
  print('O antecessor é: $antecessor');
  print('O posterior é: $posterior');
}