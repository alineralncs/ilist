import 'package:ilist/lista.dart' show Lista;
import 'package:test/test.dart';
import 'package:ilist/pessoa.dart';

//testes
//testes 01 - testando se a pessoa possui um nome do tipo string
// e se no email contem um @
void main() {
  test('.parse() fails on invalid input', () {
    expect(() => int.parse('valor'), throwsFormatException);
  });

  Pessoa pessoa;
  pessoa = Pessoa(nome: '', email: '', idade: 18);
  Lista valor;
  valor = Lista(produtos: []);
  test('test to chek if nome is not empty', () {
    expect(pessoa.inserirNome(pessoa.nome), allOf(isNotEmpty));
  });
  test('test to chek if email is not empty', () {
    expect(pessoa.inserirEmail(pessoa.email), allOf(isNotEmpty));
  });
  test('test to chek if idade is not empty', () {
    expect(pessoa.inserirIdade(pessoa.idade), allOf(isNonNegative));
  });
  test('test to chek if produto is returning', () {
    expect(valor.inserirProduto, allOf(returnsNormally));
  });

  test('test to chek if removerProduto is returning', () {
    expect(valor.removerProduto, allOf(returnsNormally));
  });
  test('test to chek if tamLista returns correctly', () {
    expect(valor.tamLista(valor.produtos), isNull);
  });
}
