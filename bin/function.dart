// returnType functionName(type param1, type param2, ...) {
//   return result;
// }

void main() {
  String checkUmur({required int tahunLahir}) {
    var age = 2025 - tahunLahir;
    return 'umur kamu sekarang adalah $age';
  }

  print(checkUmur(tahunLahir: 2005));
}
