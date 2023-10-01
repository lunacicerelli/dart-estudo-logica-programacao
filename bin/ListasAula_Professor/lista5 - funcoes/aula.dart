
// void main(List<String> args) {
//   String nome = 'Paulo';
//   func(nome);
//   print(nome);
// }

// func(String nome){
//   nome = 'Ana';
// }

void main() {
  List<String> nomes = [];
  func(nomes);
  print(nomes);
}

func(List<String> nn){
  nn.add('Paulo');
  nn.add('Aroldo');
}

