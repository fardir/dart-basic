// ignore_for_file: dead_code, unused_local_variable

void main() {
  // numbers
  // ada 2 jenis -> int & double
  var number = 2023;
  var hex = 0xDEADBEEF;
  print('contoh bilangan int $number dan $hex');

  var decimal = 1.2;
  var pi = 3.14;
  print('contoh bilangan double $decimal dan $pi');

  double withoutDecimal = 7; // sama dengan double withoutDecimal = 7.0
  print('contoh assignment double tanpa koma explicit $withoutDecimal');

  // String -> int
  var eleven = int.parse('11');

  // String -> double
  var elevenPointTwo = double.parse('11.2');

  // int -> String
  var elevenAsString = 11.toString();

  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'

  print('contoh konversi String -> int = $eleven\nsebaliknya = $elevenAsString');
  print('contoh konversi String -> double = $elevenPointTwo\nsebaliknya = $piAsString');


  // Strings
  String singleQ = 'Ini adalah String';
  String doubleQ = "Ini juga String tapi pake petik dua";
  print('$singleQ\n$doubleQ');

  // contoh teks dengan petik
  print('"What do you think of Dart?" he asked');

  // contoh teks dengan escape string
  print('"I think it\'s great!" I answered confidently');
  print("Windows path: C:\\Program Files\\Dart");

  // String interpolation
  var name = 'Bang Messi';
  print('Hello $name, good to see you.');
  print('1 + 1 = ${1+1}');
  print(r'Dia baru saja membeli komputer seharga $1,000.00'); // print raw string
  print('Hi \u2665');
  /*
    output :
    Hi ♥
  */


  // booleans
  bool alwaysTrue = true;
  var alwaysFalse = false;
  var notTrue = !true;
  bool notFalse = !false;

  // contoh penggunaan tipe data boolean
  if (alwaysTrue) {
    print("It's true");
  } else {
    print("It's false");
  }
}