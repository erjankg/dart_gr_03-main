int totallCalls = 0;

void main(){
  greet();
  greet();
  greet();
 
  introduce('Erjan ', 22);
  introduce('Ainura ', 21);
  introduce('Aleksei', 47);

 addNumbers(15,25);
 addNumbers(14,36);
 addNumbers(45,0);
  calculateDiscount(price: 85, discount: 16, tax: 2);
  calculateDiscount(price: 123, tax: 4);
  calculateDiscount(price: 487, discount: 99);

   
   
   print ('Total function calls: $totallCalls');
}
void greet()
{print(' Hello! Welcome to Dart programming!');

 totallCalls++;
}
void introduce(String name, int age)
{
  print ('My name is $name and I am $age years old.');
  totallCalls++;
}
int addNumbers(int a, int b){
  totallCalls++;
  int result = a + b;
  print ('The sum of $a and $b is $result}');
  return result;
}
calculateDiscount({ required double price,
 double discount = 0, 
 double tax = 0}){
double finalPrice = price - (price * discount/100) + (price*tax/100);
print('Final price: $finalPrice');
totallCalls++;
return finalPrice;

 }