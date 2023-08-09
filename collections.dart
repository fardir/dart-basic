void main(){
  // * list
  // contoh deklarasi list
  // ignore: unused_local_variable
  List<int> list = [1,2,3,4,5];
  // alt
  var numberList = [1,2,3,4,5];
  var stringList = ['satu','dua','tiga'];

  List dynamicList = [1, 'Dart', true]; // dynamicList bisa menampung tipe data apapun
  print(dynamicList[1]);

  // loop through list
  for (int i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }
  // alt
  stringList.forEach((element) => print(element));  // lambda expression/anonymous function

  // todo: list manipulation (add, remove, update)
  stringList.add('Flutter');
  print(stringList);
  stringList.insert(0, 'Dart');  // insert at index
  print(stringList);
  stringList[2] = 'App';  // update value
  print(stringList);

  stringList.remove('tiga');  // remove by value
  print(stringList);
  stringList.removeAt(1);  // remove by index
  print(stringList);
  stringList.removeLast();  // remove last element
  print(stringList);
  numberList.removeRange(0, 2);  // remove range of elements (index 2 masih dipertahankan)
  print(numberList);

  // * set
  // contoh deklarasi set
  var numberSet = {1,4,6};
  Set<int> anotherSet = new Set.from([1,4,6,4,1]);  // ignore duplicate value
  print(anotherSet);

  // todo: set manipulation (add, remove)
  numberSet.add(6);
  // ignore: equal_elements_in_set
  numberSet.addAll({2, 2, 3});
  print(numberSet);

  numberSet.remove(3);
  print(numberSet);
  print(numberSet.elementAt(2));  // get element at index

  // todo: union & intersection
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  print(union);
  var intersection = setA.intersection(setB);
  print(intersection);

  // * map
  // contoh deklarasi map
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan'
  };
  print(capital['Jakarta']);

  // todo: get keys
  var mapKeys = capital.keys;
  print(mapKeys);

  // todo: get values
  var mapValues = capital.values;
  print(mapValues);

  // todo: map manipulation (add, remove)
  capital['New Delhi'] = 'India';  // add new key-value pair
  print(capital);
}