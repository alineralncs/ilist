import 'dart:io';

class Lista {
  List<String> produtos = [];

  Lista({required this.produtos});

  //metodos

  inserirProduto() {
    print('Insira o produto:');
    String? texto = stdin.readLineSync();
    var adicionar = produtos.add(texto!);
    return adicionar;

    //print('\x1B[2J\x1B[0;0H');
  }

  removerProduto() {
    print(" Insira o que voce quer remover: ");
    String? removeProduto = stdin.readLineSync();
    var remover = produtos.remove(removeProduto);
    print('$removeProduto removido da sua lista!');
    return remover;
  }

  imprimirProdutos(List produtos) {
    for (var i = 0; i < produtos.length; i++) {
      print("Item $i - ${produtos[i]}");
    }
  }

  tamLista(List<String> produtos) {
    var tam = produtos.length;
    return print("Sua lista tem |$tam| produtos");
  }
}
