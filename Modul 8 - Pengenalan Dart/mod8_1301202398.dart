// void main() {
//   bool isTrue = true;
//   int integer = 1;
//   double decimal = 1.5;
//   String message = "Hello, World!";
  
//   print("Boolean: $isTrue");
//   print("Integer: $integer");
//   print("Double: $decimal");
//   print("String: $message");
// }

// void main() {
//   int x = 10;
  
//   print("x = $x");
//   if (x > 5) {
//     print("$x is greater than 5");
//   } else {
//     print("$x is less than or equal to 5");
//   }
// }

// void main() {
//   int x = 5;
  
//   print("x = $x");
//   switch (x) {
//     case 1:
//       print("The value of x is 1");
//       break;
//     case 2:
//       print("The value of x is 2");
//       break;
//     default:
//       print("The value of x is neither 1 nor 2");
//   }
// }

// void main() {
//   for (int i = 1; i <= 5; i++) {
//     print("The value of i is $i");
//   }
// }

// void main() {
//   int i = 1;
  
//   while (i <= 5) {
//     print("The value of i is $i");
//     i++;
//   }
// }

// void main() {
//   // Fixed List
//   var fixedList = List<int>.filled(3, 0);
//   fixedList.add(1);
//   print("Fixed List: $fixedList");

//   // Growable List
//   var growableList = [1, 2, 3];
//   print("Growable List: $growableList");

//   // menambahkan item ke dalam growable list
//   growableList.add(4);
//   print("Growable List after adding item: $growableList");

//   // menghapus item dari growable list
//   growableList.removeAt(1);
//   print("Growable List after removing item: $growableList");
// }

void main() {
  print(greet("Muhamad Fachri Haikal"));
}

String greet(String name) {
  return "Hello, $name!";
}
