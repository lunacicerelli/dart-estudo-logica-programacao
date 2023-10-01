
import 'package:intl/intl.dart';

class Pessoa {

  String? nome;
  int? idade;
  String? estadoCivil;
  DateTime? dataNascimento;

  mostrar(){
    DateFormat df = DateFormat('dd/MM/yyyy');
    print('Nome=$nome, idade=$idade, estadoCivil=$estadoCivil, dataNascimento=${df.format(dataNascimento!)}');
  }
}
