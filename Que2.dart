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
class superStoreEntry extends Customer{
    void superEntryPoint(){
      print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
      print("Welcome to SuperStore");
      print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    }
}

class coffeeClass extends Customer{
  int totalPriceDalgona = 0;
  int totalPriceBlack = 0;
  int totalPriceNestle = 0;
  int coffeeTotal = 0;

  void coffeeInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Coffee Details : ");
    print("");
    print("Press 1 for Dalgona Coffee (₹450)");
    print("Press 2 for Black Coffee (₹350)");
    print("Press 3 for Nestle Coffee (₹350)");
    print("");
    stdout.write("Enter Choice : ");
    int coffeeChoice = int.parse(stdin.readLineSync() ?? "0");
    print("");
    switch(coffeeChoice){
      case 1:
        dalgonaCoffee();
        break;
      case 2:
        blackCoffee();
        break;
      case 3:
        nestleCoffee();
        break;
      default:
        print("Invalid Choice"); 
    }
  }
  void dalgonaCoffee(){
  List cart = [];
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
      int quantityDalgona = int.parse(stdin.readLineSync() ?? "0");
      const PRICE_DALGONA = 450;
      totalPriceDalgona = quantityDalgona*PRICE_DALGONA;
      cart.add("Dalgona Coffee : $totalPriceDalgona");
      print("Dalgona Coffee : ₹$totalPriceDalgona");
      break;
    case 2:
      break;
  }
}
  void blackCoffee(){
    List cart = [];
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
                    int quantityBlack = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_BLACK = 350;
                    totalPriceDalgona = quantityBlack*PRICE_BLACK;
                    cart.add("Black Coffee : $totalPriceBlack");
                    print("Black Coffee : ₹$totalPriceBlack");
                    break;
                    //case 1_2_2
                  case 2:
                    break;
                }
  }
  void nestleCoffee(){
    List cart = [];
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
                    int quantityNestle = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_NESTLE = 350;
                    totalPriceNestle = quantityNestle*PRICE_NESTLE;
                    cart.add("Nestle Coffee : $totalPriceNestle");
                    print("Nestle Coffee : ₹$totalPriceNestle");
                    break;
                    //case 1_3_2
                  case 2:
                    break;
                }
  }
  void coffeeSum(){
    coffeeTotal  = totalPriceDalgona+totalPriceBlack+totalPriceNestle;
    print("$coffeeTotal");
  }
}
class waferClass extends coffeeClass{
  int totalPriceLays = 0;
  int totalPricePringles = 0;
  int totalPriceNachos = 0;
  int waferTotal = 0;

  void waferInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Wafer Details : ");
    print("");
    print("Press 1 for Lays (₹85)");
    print("Press 2 for Pringles (₹35)");
    print("Press 3 for Nachos (₹75)");
    print("");
    stdout.write("Enter Choice : ");
    int waferChoice = int.parse(stdin.readLineSync() ?? "0");
    print("");
    switch(waferChoice){
      case 1:
        laysWafer();
        break;
      case 2:
        pringlesWafer();
        break;
      case 3:
        nachosWafer();
        break;
      default:
        print("Invalid Choice"); 
    }
  }
  void laysWafer(){
    List cart = [];
    print("Lays");
                print("Price : 85");
                print("");
                print("Press 1 to Buy ");
                print("Press 2 to Exit");
                stdout.write("Enter your Choice : ");
                int laysChoice = int.parse(stdin.readLineSync() ?? "0");
                switch(laysChoice){
                  case 1:
                    print("Enter Quantity : ");
                    int quantityLays = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_LAYS = 85;
                    totalPriceDalgona = quantityLays*PRICE_LAYS;
                    cart.add("Lays : $totalPriceLays");
                    print("Lays Wafer : ₹$totalPriceLays");
                    break;
                  case 2:
                    break;
                }
  }
  void pringlesWafer(){
    List cart = [];
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
        int quantityPringles = int.parse(stdin.readLineSync() ?? "0");
        const PRICE_PRINGLES = 105;
        totalPricePringles = quantityPringles*PRICE_PRINGLES;
        cart.add("Pringles : $totalPricePringles");
        print("Pringles Wafer : ₹$totalPricePringles");
        break;
        case 2:
          break;
      }
  }
  void nachosWafer(){
    List cart = [];
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
        int quantityNachos = int.parse(stdin.readLineSync() ?? "0");
        const PRICE_NACHOS = 95;
        totalPriceNachos = quantityNachos*PRICE_NACHOS;
        cart.add("Nachos : $totalPriceNachos");
        print("Nachos Wafer : ₹$totalPriceNachos");
        break;
      case 2:
        break;
    }
  }
  void waferSum(){
    waferTotal = totalPriceLays+totalPricePringles+totalPriceNachos;
    print("$waferTotal");
  }
}
class tShirtClass extends waferClass{
  int totalPriceHoodie = 0;
  int totalPriceTNeck = 0;
  int totalPriceCamouflage = 0;
  int tShirtTotal = 0;
  
  void tShirtInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("T-Shirt Details : ");
    print("");
    print("Press 1 for Hoodie (₹750)");
    print("Press 2 for Turtle-Necked (₹350)");
    print("Press 3 for Camouflage (₹475)");
    print("");
    stdout.write("Enter Choice : ");
    int tShirtChoice = int.parse(stdin.readLineSync() ?? "0");
    print("");
    switch(tShirtChoice){
      case 1:
        hoodieTShirt();
        break;
      case 2:
        turtleNeckTShirt();
        break;
      case 3:
        camouflageTShirt();
        break;
      default:
        print("Invalid Choice"); 
    }
  }
  void hoodieTShirt(){
    List cart = [];
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
        int quantityHoodie= int.parse(stdin.readLineSync() ?? "0");
        const PRICE_HOODIE = 750;
        totalPriceHoodie = quantityHoodie*PRICE_HOODIE;
        cart.add("Hoodie : $totalPriceHoodie");
        print("Hoodie T-Shirt : ₹$totalPriceHoodie");
        break;
      case 2:
        break;
    }
  }
  void turtleNeckTShirt(){
    List cart = [];
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
        int quantityTNeck = int.parse(stdin.readLineSync() ?? "0");
        const PRICE_TNECK = 425;
        totalPriceTNeck = quantityTNeck*PRICE_TNECK;
        cart.add("Turtle Neck : $totalPriceTNeck");
        print("Turtle Neck : ₹$totalPriceTNeck");
        break;
      case 2:
        break;
    }
  }
  void camouflageTShirt(){
    List cart = [];
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
        int quantityCamouflage = int.parse(stdin.readLineSync() ?? "0");
        const PRICE_CAMOUFLAGE = 750;
        totalPriceCamouflage = quantityCamouflage*PRICE_CAMOUFLAGE;
        cart.add("Camouflage : $totalPriceCamouflage");
        print("Camouflage T-Shirt : ₹$totalPriceCamouflage");
        break;
      case 2:
        break;
    }
  }
  void tShirtSum(){
    tShirtTotal = totalPriceHoodie+totalPriceTNeck+totalPriceCamouflage;
    print("$tShirtTotal");
  }
}
class VegetableClass extends tShirtClass{
  int totalPriceCarrot = 0;
  int totalPricePotato = 0;
  int totalPriceTomato = 0;
  int vegetableTotal = 0;

  void vegeInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Vegetables Details : ");
    print("");
    print("Press 1 for Carrot (₹130)");
    print("Press 2 for Potato (₹75)");
    print("Press 3 for Tomato (₹50)");
    print("");
    stdout.write("Enter Choice : ");
    int vegetableChoice = int.parse(stdin.readLineSync() ?? "0");
    print("");
    switch(vegetableChoice){
      case 1:
        carrotInfo();
        break;
      case 2:
        potatoInfo();
        break;
      case 3:
        tomatoInfo();
        break;
      default:
        print("Invalid Choice"); 
    }
  }
  void carrotInfo(){
    List cart = [];
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
                    int quantityCarrot = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_CARROT = 130;
                    totalPriceCarrot = quantityCarrot*PRICE_CARROT;
                    cart.add("Carrot : $totalPriceCarrot");
                    print("Carrot Vegetable : ₹$totalPriceCarrot");
                    break;
                  case 2:
                    break;
                }
  }
  void potatoInfo(){
    List cart = [];
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
                    int quantityPotato = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_POTATO = 75;
                    totalPricePotato = quantityPotato*PRICE_POTATO;
                    cart.add("Potato : $totalPricePotato");
                    print("Potato Vegetable : ₹$totalPricePotato");
                    break;
                  case 2:
                    break;
                }
  }
  void tomatoInfo(){
    List cart = [];
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
                    int quantityTomato = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_TOMATO = 45;
                    totalPriceTomato = quantityTomato*PRICE_TOMATO;
                    cart.add("Tomato : $totalPriceTomato");
                    print("Tomato Vegetable : ₹$totalPriceTomato");
                    break;
                  case 2:
                    break;
                }
  }
  void vegeSum(){
    vegetableTotal = totalPriceCarrot+totalPricePotato+totalPriceTomato;
    print("$vegetableTotal");
  }
}
class ledLightClass extends VegetableClass{
  int totalPriceSyska = 0;
  int totalPriceTShaped = 0;
  int totalPriceChargeable = 0;
  int ledTotal = 0;

  void ledInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("LED-Light Details : ");
    print("");
    print("Press 1 for Syska-Bulb (₹85)");
    print("Press 2 for T-Shaped Bulb (₹125)");
    print("Press 3 for Chargeable Blub (₹250)");
    print("");
    stdout.write("Enter Choice : ");
    int ledChoice = int.parse(stdin.readLineSync() ?? "0");
    print("");
    switch(ledChoice){
      case 1:
        syskaInfo();
        break;
      case 2:
        tShapedInfo();
        break;
      case 3:
        chargeableInfo();
        break;
      default:
        print("Invalid Choice"); 
    }
  }
  void syskaInfo(){
    List cart = [];
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
                    int quantitySyska = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_SYSKA = 85;
                    totalPriceSyska = quantitySyska*PRICE_SYSKA;
                    cart.add("Syska : $totalPriceSyska");
                    print("Syska Bulb : ₹$totalPriceSyska");
                    break;
                  case 2:
                    break;
                }
  }
  void tShapedInfo(){
    List cart = [];
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
                    int quantityTShaped = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_T_SHAPED = 125;
                    totalPriceTShaped = quantityTShaped*PRICE_T_SHAPED;
                    cart.add("T-Shaped : $totalPriceTShaped");
                    print("T-Shaped Blub : ₹$totalPriceTShaped");
                    break;
                  case 2:
                    break;
                }
  }
  void chargeableInfo(){
    List cart = [];
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
                    int quantityChargeable = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_CHARGEABLE = 250;
                    totalPriceChargeable = quantityChargeable*PRICE_CHARGEABLE;
                    cart.add("Chargeable : $totalPriceChargeable");
                    print("Chargeable Bulb : ₹$totalPriceChargeable");
                    break;
                  case 2:
                    break;
                }
  }
  void ledSum(){
    ledTotal = totalPriceSyska+totalPriceTShaped+totalPriceChargeable;
    print("$ledTotal");
  }
}
class Cart extends ledLightClass{
  int cartTotal = 0;
  void cartInfo(){
    cartTotal = coffeeTotal+waferTotal+vegetableTotal+tShirtTotal+ledTotal;
    print("Cart : ");
  }
}
class superStoreExit extends Cart{
  void exitCode(){
    print("$coffeeTotal , $waferTotal , $vegetableTotal , $tShirtTotal , $ledTotal");
    print("Total Price : $cartTotal");
    print("Thank You for Shopping !!");
  }
}
class Access extends superStoreExit{}

void main(){
  stdout.write("How many Customer ID's you want : ");
  int length = int.parse(stdin.readLineSync()  ?? "0");
  List<Customer> customers = List.generate(length, (index) {
    Access  access = new Access();
    access.setData();
    return access;
  });
  customers.forEach((element) {
    element.getData();
  });

  superStoreEntry superEntry = new superStoreEntry();
  superEntry.superEntryPoint();
  late int choice;
  do{
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Press 1 to View Coffee ");
    print("Press 2 to View Wafers ");
    print("Press 3 to View T-Shirt ");
    print("Press 4 to View Vegetables ");
    print("Press 5 to View LED-Light ");
    print("Press 0 to Go to Cart");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync() ?? "0");
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    coffeeClass coffee = new coffeeClass();
    waferClass wafer = new waferClass();
    VegetableClass vegetable = new VegetableClass();
    tShirtClass tShirt = new tShirtClass();
    ledLightClass led = new ledLightClass();
    switch(choice){
      case 1:
        coffee.coffeeInfo();
        break;
      case 2:
        wafer.waferInfo();
        break;
      case 3:
        tShirt.tShirtInfo();
        break;
      case 4:
        vegetable.vegeInfo();
        break;
      case 5:
        led.ledInfo();
        break;
    }
  }while(choice!=0);
  Cart cart = new Cart();
  cart.cartInfo();
  print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
  superStoreExit superExit = new superStoreExit();
  superExit.exitCode();
}
