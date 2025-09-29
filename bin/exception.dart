void main() {
  try {
    var a = 7;
    var b = 7;
    var c = 0;
    print(a ~/ c);
  } catch (e, s) {
    print('can\'t divide by 0');
    print('Exception : $e');
    print('Stack trace: $s');
  }
}
