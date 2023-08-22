
import 'dart:io';
void main(){



List<Map<String, dynamic>> products = [
    {'name': 'shoes', 'price': 38},
    {'name': 'bag', 'price': 47},
    {'name': 'shirt', 'price': 64},
    {'name': 'dress', 'price': 300},
  ];

  print("Available products:");
  for (int i = 0; i < products.length; i++) {

    print(i+1);
    print(products[i]['name']);
  }

  print("Choose a product number:");
   String? s=stdin.readLineSync();
   int p = int.tryParse(s?? "0")?? 0;
  
 
  if (p >= 1 && p <= products.length) {
    int select = p - 1 ;
    String pName = products[select]['name'];
    int pPrice = products[select]['price'];

    print("prodect: $pName");
    print("Price: $pPrice");
  } else {
    print("unavailable");
  }
}