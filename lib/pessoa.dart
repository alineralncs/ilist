import 'dart:io';

class Pessoa {
  late String nome;
  late String email;
  late int idade;

  Pessoa({required this.nome, required this.email, required this.idade});

  get isNotEmpty => null;

  //metodos
  String? inserirNome(String nome) {
    print('Digite seu nome: ');
    return stdin.readLineSync()!;
  }

  String? inserirEmail(String email) {
    print('Digite seu email: ');
    return stdin.readLineSync()!;
  }

  int? inserirIdade(int idade) {
    print('Digite sua idade: ');
    return int.parse(stdin.readLineSync()!);
  }
}
