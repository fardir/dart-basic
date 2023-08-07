void main(){
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price){
  num discount = 0;
  if (price >= 100000){
    discount = 10 / 100 * price;
  }
  return discount;
}

// // * global variable
// var price = 300000;

// // ! control flow level variable scope
// num checkDiscountError(num price){
//   num discount = 0;
//   if(!discountApplied){     // ! error: The getter 'discountApplied' isn't defined for the class '_MyHomePageState'.
//     if(price >= 100000){
//       discount = 10 / 100 * price;
//       var discountApplied = true;
//     }
//   }
//   return discount;
// }