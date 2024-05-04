import 'dart:io';

class Customer{
  int? custId;
  String? custName;
  int? custContact;
  void setData(){
    stdout.write("Enter Customer ID : ");
    this.custId = int.parse(stdin.readLineSync() ?? "0");
    stdout.write("Enter Customer Name : ");
    this.custName = stdin.readLineSync() ?? "";
    stdout.write("Enter Customer Contact : ");
    this.custContact = int.parse(stdin.readLineSync() ?? "0");
    print("");
  }
  void getData(){
    print("Customer ID : ${this.custId}");
    print("Customer Name : ${this.custName}");
    print("Customer Contact : ${this.custContact}");
    print("");
  }
}
void main(){
  stdout.write("How many Customer ID's you want : ");
  int length = int.parse(stdin.readLineSync()  ?? "0");
  List cart = [];
  List<Customer> customers = List.generate(length, (index) {
    Customer customer = Customer();
    customer.setData();
    return customer;
  });
  customers.forEach((element) {
    element.getData();
  });
  int choice = 0;
  int coffeeTotal = 0;
  int tShirtTotal = 0;
  int vegetableTotal = 0;
  int waferTotal = 0;
  int ledTotal = 0;
  print("Welcome to SuperStore");
  do{
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Press 1 to Add Coffee in Cart");
    print("Press 2 to Add Wafers in Cart");
    print("Press 3 to Add T-Shirt in Cart");
    print("Press 4 to Add Vegetables in Cart");
    print("Press 5 to Add LED-Light in Cart");
    print("Press 0 to Exit");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync() ?? "0");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    switch(choice){
      case 1:
      print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("Coffee Details : ");
        print("Price : 150");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int coffeeChoice = int.parse(stdin.readLineSync() ?? "0");
        print("");
        switch(coffeeChoice){
          case 1:
            stdout.write("Enter Quantity : ");
            int coffeeQuantity = int.parse(stdin.readLineSync() ?? "0");
            coffeeTotal = coffeeQuantity*150;
            print("Total Price : $coffeeTotal");
            cart.add("Coffee");
            break;
          case 2:
            break;
        }
        break; 
        case 2:
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("Wafer Details : ");
        print("Price : 30");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int waferChoice = int.parse(stdin.readLineSync() ?? "0");
        print("");
        switch(waferChoice){
          case 1:
            stdout.write("Enter Quantity : ");
            int waferQuantity = int.parse(stdin.readLineSync() ?? "0");
            waferTotal = waferQuantity*30;
            print("Total Price : $waferTotal");
            break;
          case 2:
          cart.add("Wafers");
            break;
        }
        break;
        case 3:
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("T-Shirt Details : ");
        print("Price : 150");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int tShirtChoice = int.parse(stdin.readLineSync() ?? "0");
        switch(tShirtChoice){
          case 1:
            stdout.write("Enter Quantity : ");
            int tShirtQuantity = int.parse(stdin.readLineSync() ?? "0");
            tShirtTotal = tShirtQuantity*150;
            print("Total Price : $tShirtTotal");
            break;
          case 2:
            break;
        }
        cart.add("T-Shirt");
        break;
        case 4:
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("Vegetables Details : ");
        print("Price : 350");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int vegetableChoice = int.parse(stdin.readLineSync() ?? "0");
        switch(vegetableChoice){
          case 1:
            stdout.write("Enter Quantity : ");
            int vegetableQuantity = int.parse(stdin.readLineSync() ?? "0");
            vegetableTotal = vegetableQuantity*350;
            print("Total Price : $vegetableTotal");
            break;
          case 2:
            break;
        }
        cart.add("Vegetables");
        break;
        case 5:
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("LED-Light Details : ");
        print("Price : 220");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int ledChoice = int.parse(stdin.readLineSync() ?? "0");
        switch(ledChoice){
          case 1:
            stdout.write("Enter Quantity : ");
            int ledQuantity = int.parse(stdin.readLineSync() ?? "0");
            ledTotal = ledQuantity*220;
            print("Total Price : $ledTotal");
            break;
          case 2:
            break;
        }
        cart.add("Vegetables");
        break;
        case 0:
          print("Exiting the Code..");
          break;
        default:
          print("Invalid Choice !!");
          break;
    }
  }while(choice!=0);
  int cartTotal = coffeeTotal+waferTotal+vegetableTotal+tShirtTotal+ledTotal;
  print("Cart : ");
  cart.forEach((element) {
    print("$cart");
  });
  print("$coffeeTotal , $waferTotal , $vegetableTotal , $tShirtTotal , $ledTotal");
  print("Total Price : $cartTotal");
  print("Thank You for Shopping !!");
}