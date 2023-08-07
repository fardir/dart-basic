void main() {
  greet('John Doe', 2000);
  greeting();
  greetNewUser(name: 'Jane Doe', age: 20, isVerified: true);
  greetNewUser(name: 'Jane Doe', age: 20);
  greetNewUser(age: 20);
  greetNewUser(isVerified: true);
}

// todo: method untuk menyapa
void greet(String name, bornYear) {
  var age = 2023 - bornYear;
  print('Hello $name! This year you will be $age years old.');
}

// todo: method untuk hitung rata-rata
double average(num num1, num num2) {
  return (num1 + num2) / 2;
}

// atau

// * penggunaan arrot syntax
double average2(num num1, num num2) => (num1 + num2) / 2;
void greeting() => print('Hello!');

// * optional parameter
void greetNewUser({String name = 'John Doe', int age = 17, bool isVerified = false}) {
  print('Hello $name! You are $age years old.');
  if (isVerified) {
    print('Your account has been verified.');
  }
}