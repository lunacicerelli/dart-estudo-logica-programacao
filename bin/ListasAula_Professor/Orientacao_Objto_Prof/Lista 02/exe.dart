
import 'veiculo.dart';

void main(List<String> args) {
  
  Veiculo veiculo1 = Veiculo.gasolina(marca: "Volkswagen",modelo: "Fusca", anoModelo: 1980,anoFabicacao: 1979);

  Veiculo veiculo2 = Veiculo.flex(marca: "Toyota", modelo: "Bandeirante", anoModelo: 1968, anoFabicacao: 1967);

  Veiculo veiculo3 = Veiculo.diesel(marca: "Fiat", modelo: "Uno", anoModelo:  2000,  anoFabicacao: 1999);

  print(veiculo1);
  print(veiculo2);
  print(veiculo3);

}