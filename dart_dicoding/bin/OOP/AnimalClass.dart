void main() {


}

abstract class Animal {
  String _name;
  int _age;
  double _weight;

  Animal(this._name, this._age, this._weight) {}

  // getter
  String get name => _name;
  int get age => _age;
  double get weight => _weight;

  // setter
  set name(String value) {
    _name = value;
  }

  eat() {
    print('$_name is eating');
    _weight += 0.2;
  }

  poop() {
    print('$_name is pooping');
    _weight -= 0.1;
  }
}
