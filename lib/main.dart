//import 'dart:svg';
import 'pessoa.dart';

import 'lista.dart';
import 'imprimir.dart';
import 'dart:io';
//import 'opcoes.dart';

void main(List<String> arguments) {
  // A1SSIM COM INT
  // int? valor = int.parse(stdin.readLineSync()!);
  var condicao = true;

  while (condicao) {
    menu();
    var opc = int.parse(stdin.readLineSync()!);
    funPrint();
    if (opc == 1) {
      var cadastro = Pessoa(nome: '', email: '', idade: 18);
      cadastro.inserirNome('');
      funPrint();
      cadastro.inserirEmail('');
      funPrint();
      cadastro.inserirIdade(cadastro.idade);
      funPrint();

      miniMenu();
      int opcaoLista = int.parse(stdin.readLineSync()!);
      funPrint();
      if (opcaoLista == 1) {
        Lista valor = Lista(produtos: []);

        bool condicao = true;

        while (condicao) {
          ilistMenu();
          var opcao = stdin.readLineSync();

          if (opcao != null) {
            int? opc = int.parse(opcao);
            if (opc == 1) {
              valor.inserirProduto();
              funPrint();
            } else if (opc == 2) {
              valor.removerProduto();
              //funPrint();
            } else if (opc == 3) {
              valor.tamLista(valor.produtos);
            } else if (opc == 4) {
              valor.imprimirProdutos(valor.produtos);
            } else {
              condicao = false;
              print(' Saindo da lista ');
              print(' Tchau ');
            }
          }
        }
      } else {
        condicao = false;
      }
      //menu();

    } else {
      condicao = false;
    }
  }
}
