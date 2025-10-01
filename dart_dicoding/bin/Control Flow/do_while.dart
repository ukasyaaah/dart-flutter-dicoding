void main() {
  var baris = 10;

  while (baris > 0) {
    var kolom = baris;
    String teks = '';

    while (kolom > 0) {
      teks += '*';
      kolom--;
    }

    print(teks);
    baris--;
  }
}
