
void main() {
  List<List> produtos = [
    ['TV','LG',1500],
    ['iPhone','Apple',4000],
    ['SNES','Nintendo',900]
  ];

  for(int i = 0 ; i < produtos.length ; i++){
    for(int j = 0 ; j < produtos[i].length ; j++){
      print(produtos[i][j]);
    }
    print('');
  }
}