void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder(false);
    print('Your Order : $order');
  } catch (e) {
    print('Upss! $e');
  } finally {
    print('Thank You');
  }
}

Future<String> getOrder(ist) {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = ist ?? true;
    return isStockAvailable ? 'Coffee' : throw 'Stock Kosong';
  });
}
