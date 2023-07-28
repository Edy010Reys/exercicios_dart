abstract class Passenger {
  // Atributo que armazena o nome da pessoa
  String _name;

  // Atributo que armazena a idade da pessoa
  int _age;

  Passenger(this._name, this._age);

  // Método que retorna o nome do passageiro
  String get name => _name;

  // Método que altera o nome do passageiro
  set newName (String newName) {
    _name = newName;
  }

  // Método que retorna a idade do passageiro
  int get age => _age;

  // Método que altera a idade do passageiro
  set newAge (int newAge) {
    _age = newAge;
  }
}