void main() {
  var CuacaSekarang = Cuaca.hujan;
  print(Colors.green.name);

  switch (CuacaSekarang) {
    case Cuaca.cerah:
      print('Cuaca Hari ini sedang Cerah');
      break;
    case Cuaca.berawan:
      print('Cuaca Hari ini sedang berawan');
      break;
    case Cuaca.mendung:
      print('Cuaca Hari ini sedang mendung');
      break;
    case Cuaca.hujan:
      print('Cuaca Hari ini sedang hujan');
      break;
    default:
      print('Cuaca tidak dikenal!');
      break;
  }
}

enum Colors { red, yellow, orange, green, blue, purple }

enum Cuaca { cerah, berawan, mendung, hujan, }
