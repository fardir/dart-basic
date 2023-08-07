// * const bersifat compile-time constant (harus diinisialisasi sebelum program jalan)
// * final bersifat run-time constant (bisa diinisialisasi ketika runtime)
// * const performa lebih baik dan memori lebih sedikit --> karena diinisialisasi sebelum program jalan
import 'dart:io';

// ? contoh penggunaan const
const num pi = 3.14;

num calculateCircleArea(num radius) => pi * radius * radius;


// ? contoh penggunaan final
final firstName = stdin.readLineSync();
final lastName = stdin.readLineSync();  
// lastName = 'Dart'; // !Tidak bisa mengubah nilai

void main(){
  var radius = 7;
  print('Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
  print('Hello $firstName $lastName!');
}