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
    print("Press 1 to View Coffee ");
    print("Press 2 to View Wafers ");
    print("Press 3 to View T-Shirt ");
    print("Press 4 to View Vegetables ");
    print("Press 5 to View LED-Light ");
    print("Press 0 to Exit");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync() ?? "0");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    switch(choice){
      //case 1 for Coffee
      case 1:
      int dalgonaPrice = 0;
      int blackPrice = 0;
      int nestlePrice = 0;
      //Case 1 starts
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("Coffee Details : ");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int coffeeChoice = int.parse(stdin.readLineSync() ?? "0");
        print("");
        switch(coffeeChoice){
          //case 1_1 
          case 1:
            print("Press 1 for Dalgona Coffee (₹450)");
            print("Press 2 for Black Coffee (₹350)");
            print("Press 3 for Nestle Coffee (₹350)");
            stdout.write("Enter your Coffee choice : ");
            int coffeeChoice = int.parse(stdin.readLineSync() ?? "0");
            switch(coffeeChoice){
              case 1:
                print("Dalgona Coffee");
                print("Price : 450");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int dalgonaChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(dalgonaChoice){
                  //case 1_1_1
                  case 1:
                    print("Enter Quantity : ");
                    int dalgonaQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int dalgonaPrice = dalgonaQuantity*450;
                    cart.add("Dalgona Coffee : $dalgonaPrice");
                    break;
                    //case 1_1_2
                  case 2:
                    break;
                }
                break;
                //case 1_2
               case 2:
                print("Black Coffee");
                print("Price : 350");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int blackChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(blackChoice){
                  //case 1_2_1
                  case 1:
                    print("Enter Quantity : ");
                    int blackQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int blackPrice = blackQuantity*350;
                    cart.add("Black Coffee : $blackPrice");
                    break;
                    //case 1_2_2
                  case 2:
                    break;
                }
                break;
                //case 1_3
                 case 3:
                 print("Nestle Coffee");
                 print("Price : 350");
                 print("");
                  print("Press 1 to Buy ");
                  print("Press 2 to Exit");
                  stdout.write("Enter your Choice : ");
                  int nestleChoice = int.parse(stdin.readLineSync() ?? "0");
                 switch(nestleChoice){
                  //case 1_3_1
                  case 1:
                    print("Enter Quantity : ");
                    int nestleQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int nestlePrice = nestleQuantity*350;
                    cart.add("Nestle Coffee : $nestlePrice");
                    break;
                    //case 1_3_2
                  case 2:
                    break;
                }
                coffeeTotal  = dalgonaPrice+blackPrice+nestlePrice;
                print("$coffeeTotal");
                break;
            }
            break;
          case 2:
            break;
        }
        break; 
        //case 2 for Wafer---------------------------------------------------------
        case 2:
        int laysPrice = 0;
        int pringlesPrice = 0;
        int nachosPrice = 0;
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("Wafer Details : ");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int waferChoice = int.parse(stdin.readLineSync() ?? "0");
        print("");
        switch(waferChoice){
          //case 2_1 for Lays
          case 1:
            print("Press 1 for Lays ");
            print("Press 2 for Pringles ");
            print("Press 3 for Nachos ");
            stdout.write("Enter your Wafer choice : ");
            int coffeeChoice = int.parse(stdin.readLineSync() ?? "0");
            switch(coffeeChoice){
              //case 2_1_1
              case 1:
                print("Lays");
                print("Price : 50");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int laysChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(laysChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int laysQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int laysPrice = laysQuantity*450;
                    cart.add("Lays : $laysPrice");
                    break;
                  case 2:
                    break;
                }
                break;
               case 2:
                print("Pringles");
                print("Price : 35");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int pringlesChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(pringlesChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int pringlesQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int pringlesPrice = pringlesQuantity*350;
                    cart.add("Pringles : $pringlesPrice");
                    break;
                  case 2:
                    break;
                }
                break;
                 case 3:
                print("Nachos");
                print("Price : 75");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int nachosChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(nachosChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int nachosQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int nachosPrice = nachosQuantity*350;
                    cart.add("Nachos : $nachosPrice");
                    break;
                  case 2:
                    break;
                }
                break;
            }
            int waferTotal = laysPrice+nachosPrice+pringlesPrice;
            print("$waferTotal");
            break;
          case 2:
            break;
        }
        break; 
        //case 3---------------------------------------------------------
        case 3:
        int hoodiePrice = 0;
        int turtleNeckPrice = 0;
        int camouflagePrice = 0;
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("T-Shirt Details : ");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int tShirtChoice = int.parse(stdin.readLineSync() ?? "0");
        print("");
        switch(tShirtChoice){
          case 1:
            print("Press 1 for Hoodie ");
            print("Press 2 for Turtle Neck ");
            print("Press 3 for Camouflage ");
            stdout.write("Enter your Wafer choice : ");
            int tShirtChoice = int.parse(stdin.readLineSync() ?? "0");
            switch(tShirtChoice){
              case 1:
                print("Hoodie");
                print("Price : 750");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int hoodieChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(hoodieChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int hoodieQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int hoodiePrice = hoodieQuantity*450;
                    cart.add("Hoodie : $hoodiePrice");
                    break;
                  case 2:
                    break;
                }
                break;
               case 2:
                print("Turtle Neck");
                print("Price : 350");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int turtleNeckChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(turtleNeckChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int turtleNeckQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int turtleNeckPrice = turtleNeckQuantity*350;
                    cart.add("Turtle Neck : $turtleNeckPrice");
                    break;
                  case 2:
                    break;
                }
                break;
                 case 3:
                print("Camouflage");
                print("Price : 475");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int camouflageChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(camouflageChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int camouflageQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int camouflagePrice = camouflageQuantity*350;
                    cart.add("Camouflage : $camouflagePrice");
                    break;
                  case 2:
                    break;
                }
                break;

            }
            int tShirtTotal = hoodiePrice+turtleNeckPrice+camouflagePrice;
            print("$tShirtTotal");
            break;
          case 2:
            break;
        }
        break; 
        //case 4---------------------------------------------------------
         case 4:
         int carrotPrice = 0;
         int potatoPrice = 0;
         int tomatoPrice = 0;
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("Vegetables Details : ");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int vegetableChoice = int.parse(stdin.readLineSync() ?? "0");
        print("");
        switch(vegetableChoice){
          case 1:
            print("Press 1 for Carrot ");
            print("Press 2 for Potato ");
            print("Press 3 for Tomato ");
            stdout.write("Enter your Wafer choice : ");
            int vegetableChoice = int.parse(stdin.readLineSync() ?? "0");
            switch(vegetableChoice){
              case 1:
                print("Carrot");
                print("Price : 130");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int carrotChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(carrotChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int carrotQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int carrotPrice = carrotQuantity*130;
                    cart.add("Carrot : $carrotPrice");
                    break;
                  case 2:
                    break;
                }
                break;
               case 2:
                print("Potato");
                print("Price : 75");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int potatoChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(potatoChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int potatoQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int potatoPrice = potatoQuantity*75;
                    cart.add("Potato : $potatoPrice");
                    break;
                  case 2:
                    break;
                }
                break;
                 case 3:
                print("Tomato");
                print("Price : 50");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int tomatoChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(tomatoChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int tomatoQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int tomatoPrice = tomatoQuantity*350;
                    cart.add("Tomato : $tomatoPrice");
                    break;
                  case 2:
                    break;
                }
                break;

            }
            int vegetableTotal = carrotPrice+potatoPrice+tomatoPrice;
            print("$vegetableTotal");
            break;
          case 2:
            break;
        }
        //case 5---------------------------------------------------------
        break; 
        case 5:
        int syskaPrice = 0;
        int tShapedPrice = 0;
        int chargeablePrice = 0;
        print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        print("LED-Light Details : ");
        print("");
        print("Press 1 to Buy ");
        print("Press 2 to Exit ");
        print("");
        stdout.write("Enter Choice : ");
        int ledChoice = int.parse(stdin.readLineSync() ?? "0");
        print("");
        switch(ledChoice){
          case 1:
            print("Press 1 for Syska ");
            print("Press 2 for T-Shape ");
            print("Press 3 for Chargeable ");
            stdout.write("Enter your Wafer choice : ");
            int ledChoice = int.parse(stdin.readLineSync() ?? "0");
            switch(ledChoice){
              case 1:
                print("Syska");
                print("Price : 85");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int syskaChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(syskaChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int syskaQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int syskaPrice = syskaQuantity*85;
                    cart.add("Syska : $syskaPrice");
                    break;
                  case 2:
                    break;
                }
                break;
               case 2:
                print("T-Shaped");
                print("Price : 125");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int tShapedChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(tShapedChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int tShapedQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int tShapedPrice = tShapedQuantity*350;
                    cart.add("T-Shaped : $tShapedPrice");
                    break;
                  case 2:
                    break;
                }
                break;
                 case 3:
                print("Chargeable");
                print("Price : 250");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int chargeableChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(chargeableChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int chargeableQuantity = int.parse(stdin.readLineSync() ?? "0");
                    int chargeablePrice = chargeableQuantity*350;
                    cart.add("Chargeable : $chargeablePrice");
                    break;
                  case 2:
                    break;
                }
                break;

            }
            int ledTotal = syskaPrice+tShapedPrice+chargeablePrice;
            print("$ledTotal");
            break;
          case 2:
            break;
        }
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
