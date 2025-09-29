void main() {
  var capital = {'Indonesia': 'Jakarta', 'Japan': 'Tokyo', 'England': 'London'};

  var mapKeys = capital.keys;
  print('mapKeys : $mapKeys');

  var mapValues = capital.values;
  print('mapValues : $mapValues');

  //manipulasi map
  capital['India'] = 'New Delhi';
  print(capital);
}
