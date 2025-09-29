// int age = null; -> error

void main() {
  String? favoriteFood = null; // -> null safety

  buyMeal(favoriteFood);
}

void buyMeal(String? meal) {
  meal != null ? print('I bought a $meal') : print('I bought some meal');
}
