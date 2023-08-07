// * input suhu fahrenheit
// * konversi sesuai rumus --> (fahrenheit - 32) * 5/9
// * output hasil konversi
// ? challenge: buatlah konversi ke suhu reamur dan kelvin

import 'dart:io';

// todo: method untuk konversi fahrenheit ke celcius
num fahrenheitToCelcius(num fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}
  
// todo: method untuk konversi fahrenheit ke reamur
num fahrenheitToReamur(num fahrenheit) {
  return (fahrenheit - 32) * 4 / 9;
}

// todo: method untuk konversi fahrenheit ke kelvin
num fahrenheitToKelvin(num fahrenheit) {
  return (fahrenheit - 32) * 5 / 9 + 273.15;
}

void main() {
  // @param fahrenheit 
  try{
    stdout.write('Masukkan suhu dalam Fahrenheit: ');
    var fahrenheit = num.parse(stdin.readLineSync() as String);

    var celsius = fahrenheitToCelcius(fahrenheit);
    var reamur = fahrenheitToReamur(fahrenheit);
    var kelvin = fahrenheitToKelvin(fahrenheit);

    print('$fahrenheit derajat Fahrenheit = $celsius derajat Celsius');
    print('$fahrenheit derajat Fahrenheit = $reamur derajat Reamur');
    print('$fahrenheit derajat Fahrenheit = $kelvin derajat Kelvin');
  } catch(e, s){
    print('Input harus berupa angka!');
    print('Stack trace: $s');
    exit(1);
  }

}