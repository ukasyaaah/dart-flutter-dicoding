import 'dart:io';

void main() {
  stdout.write('Nama : ');
  var name = stdin.readLineSync();
  stdout.write('Umur : ');
  var umur = stdin.readLineSync();

  print('Halo $name, umur mu $umur');
  print("Windows path: C:\\Program Files\\Dart");
}
