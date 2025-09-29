import 'AnimalClass.dart';

void main() {
  var rio = new Bird('Rio', 12, 10.0, 'Red').fly();

}

class Bird extends Animal {
  final String color;

  Bird(name, age, weight, this.color) : super(name, age, weight);

  fly() {
    print('$name is Flying');
  }
}
