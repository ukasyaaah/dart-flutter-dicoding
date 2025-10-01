void main() {
  List dynamicList = ['Halo', 'Dart', true];
  print(dynamicList.runtimeType);

  // ======================================== Loop List =========
  // cara 1
  for (var element in dynamicList) {
    print(element);
  }

  // cara 2
  for (var i = 0; i < dynamicList.length; i++) {
    print(dynamicList[i]);
  }

  // cara 3
  dynamicList.forEach((item) => print('item : $item'));

  // ======================================== manipulasi List =========
  dynamicList.add('Flutter');
  dynamicList.insert(0, 'tambah ke Paling awal');
  dynamicList[3] = 'Aplikasi';
  //========================================= DELETE LIST=======
  // Menghapus list dengan nilai Aplikasi
  dynamicList.remove('Aplikasi');

  // Menghapus list pada index ke-1
  dynamicList.removeAt(1);

  // Menghapus data list terakhir
  dynamicList.removeLast();

  // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)
  // stringList.removeRange(0,2);
  print(dynamicList);

  // ======================================== Spread Operator =========
  List<String> favorites = ['Kue Bandung', 'Kue Mochi', 'Bubur Mutiara'];
  var others = ['Mangga', 'Zuppa Soup'];
  var nullFoods;

  var allMyFoods = [...favorites, ...others, ...?nullFoods];
  print(allMyFoods);
}
