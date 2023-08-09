import 'dart:io';

void main(){
  // todo: if statement
  var isRaining = true;

  print('Prepare before going to office');
  if (isRaining) {
    print('Oh. It\'s raining, bring an umbrella');
  }
  print('Going to the office');


  // todo: if-else
  var openHours = 8;
  var closedHours = 21;
  var now = 17;

  if (now > openHours && now < closedHours) {
    print('Hello, we\'re open');
  } else {
    print('Sorry, we\'ve closed');
  }

   
  // todo: else-if
  stdout.write('Inputkan nilai anda (1-100): ');
  var score = num.tryParse(stdin.readLineSync() ?? '');

  print('Nilai anda: ${calculateScore(score!)}');


  // todo: 1-line if
  // * syntax: condition ? true : false
  // ignore: unused_local_variable
  var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we've closed";
  // atau
  // * syntax: expression1 ?? expression2
  var name;
  // ignore: unused_local_variable
  var buyer = name ?? 'user';


  // todo: switch-case
  stdout.write('Masukkan angka pertama: ');
  var firstNumber = num.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Masukkan operator (+, -, *, /): ');
  var operator = stdin.readLineSync() ?? '';
  stdout.write('Masukkan angka kedua: ');
  var secondNumber = num.tryParse(stdin.readLineSync() ?? '');

  switch (operator) {
    case '+':
      print('$firstNumber $operator $secondNumber = ${firstNumber! + secondNumber!}');
      break;
    case '-':
      print('$firstNumber $operator $secondNumber = ${firstNumber! - secondNumber!}');
      break;
    case '*':
      print('$firstNumber $operator $secondNumber = ${firstNumber! * secondNumber!}');
      break;
    case '/':
      print('$firstNumber $operator $secondNumber = ${firstNumber! / secondNumber!}');
      break;
    default:
      print('Operator tidak ditemukan');
  }

  // ---------------------------------------------------------------------------------

  // todo: for-loop
  for (var i = 1; i <= 10; i++) {
    print('*'*i);
  }

  // todo: while - do-while
  var i = 1;
  while (i <= 10) {
    print('*'*i);
    i++;
  }

  // todo: use-case do-while u/ validasi user
  // ! bug infinite loop
  String username;
  bool notValid = false;

  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync() ?? '';

    if (username.length < 6) {
      notValid = true;
      print('Username Anda tidak valid');
      break; // ? break akan menghentikan perulangan
    }
  } while (notValid);

  // ---------------------------------------------------------------------------------
  
  // todo: break - continue
  // 20 bilangan prima pertama
  var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29,
                      31, 37, 41, 43, 47, 53, 59, 61, 67, 71];
  stdout.write('Masukkan bilangan prima: ');
  var searchNumber = int.tryParse(stdin.readLineSync() ?? '');
  for (int i=0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i+1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
  
}

String calculateScore(num score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
}

// todo: print 1-10, kecuali kelipatan 3
void breakContinue() {
  for (int i = 0; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}