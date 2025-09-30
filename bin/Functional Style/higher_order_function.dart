void myHigherOrderFunction(String message, Function fun, int num1, int num2) {
  print(message);
  print(fun(num1, num2));
}

void main() {
  var sum = (num1, num2) => num1 + num2;
  myHigherOrderFunction('Hello Admin', sum, 3, 4);
}
