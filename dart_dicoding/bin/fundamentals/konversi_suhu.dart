// Alur aplikasi konversi suhu kita akan seperti berikut:

// Menerima input suhu fahrenheit dari pengguna.
// Melakukan konversi sesuai rumus.
// Menampilkan hasil konversi.


import 'dart:io';

void main() {
  stdout.write('Masukkan suhu Fahrenheit : ');
  var fahrenheit = int.parse(stdin.readLineSync()!);
  var celcius = (fahrenheit - 32) * 5 / 2;

  print('$fahrenheit derajat Fahrenheit adalah $celcius derajat celcius');
}
