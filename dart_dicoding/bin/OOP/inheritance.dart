import 'AnimalClass.dart';
import 'FlyInterface.dart';

void main() {
  var rio = new Bird('Rio', 12, 10.0, 'Red')..fly();
}

class Bird extends Animal implements Fly {
  final String color;

  Bird(name, age, weight, this.color) : super(name, age, weight);

  @override
  fly() {
    print('$name is Flying');
  }
}
