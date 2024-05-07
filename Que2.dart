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
  void coffeeInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Coffee Details : ");
    print("");
    print("Press 1 to Buy ");
    print("Press 2 to Exit ");
    print("");
    stdout.write("Enter Choice : ");
    int coffeeChoice = int.parse(stdin.readLineSync() ?? "0");
    print("");
  }
  void dalgonaCoffee(){
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
                  //  cart.add("Dalgona Coffee : $dalgonaPrice");
                  //---------------------------------------------- ADD this
                    break;
                  case 2:
                    break;
                }
  }
  void blackCoffee(){
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
                  //  cart.add("Black Coffee : $blackPrice");
                  //---------------------------------------------- ADD this
                    break;
                    //case 1_2_2
                  case 2:
                    break;
                }
  }
  void nestleCoffee(){
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
                    //cart.add("Nestle Coffee : $nestlePrice");
                    //---------------------------------------------- ADD this
                    break;
                    //case 1_3_2
                  case 2:
                    break;
                }
  }
  void coffeeSum(){
    int coffeeTotal  = totalPriceDalgona+totalPriceBlack+totalPriceNestle;
    print("$coffeeTotal");
  }
}
class waferClass extends coffeeClass{
  int totalPriceLays = 0;
  int totalPricePringles = 0;
  int totalPriceNachos = 0;

  void waferInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Wafer Details : ");
    print("");
    print("Press 1 to Buy ");
    print("Press 2 to Exit ");
    print("");
  }
  void laysWafer(){
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
                    int quantityLays = int.parse(stdin.readLineSync() ?? "0");
                    const PRICE_LAYS = 85;
                    totalPriceDalgona = quantityLays*PRICE_LAYS;
                    //cart.add("Lays : $laysPrice");
                    //-----------------------------------ADD
                    break;
                  case 2:
                    break;
                }
  }
  void pringlesWafer(){
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
        //cart.add("Pringles : $pringlesPrice");
        //-------------------------------ADD
        break;
        case 2:
          break;
      }
  }
  void nachosWafer(){
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
        //cart.add("Nachos : $nachosPrice");
        break;
      case 2:
        break;
    }
  }
  void waferSum(){
    int waferTotal = totalPriceLays+totalPricePringles+totalPriceNachos;
    print("$waferTotal");
  }
}
class tShirtClass extends waferClass{
  int totalPriceHoodie = 0;
  int totalPriceTNeck = 0;
  int totalPriceCamouflage = 0;
  
  void tShirtInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("T-Shirt Details : ");
    print("");
    print("Press 1 to Buy ");
    print("Press 2 to Exit ");
    print("");
  }
  void hoodieTShirt(){
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
        //cart.add("Hoodie : $hoodiePrice");
        //-----------------------------------------ADD
        break;
      case 2:
        break;
    }
  }
  void turtleNeckTShirt(){
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
        //cart.add("Turtle Neck : $turtleNeckPrice");
        //----------------------------------------------------ADD
        break;
      case 2:
        break;
    }
  }
  void camouflageTShirt(){
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
        //cart.add("Camouflage : $camouflagePrice");
        //---------------------------------------------------ADD
        break;
      case 2:
        break;
    }
  }
  void tShirtSum(){
    int tShirtTotal = totalPriceHoodie+totalPriceTNeck+totalPriceCamouflage;
    print("$tShirtTotal");
  }
}
class VegetableClass extends tShirtClass{
  int totalPriceCarrot = 0;
  int totalPricePotato = 0;
  int totalPriceTomato = 0;

  void vegeInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("Vegetables Details : ");
    print("");
    print("Press 1 to Buy ");
    print("Press 2 to Exit ");
    print("");
  }
  void carrotInfo(){
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
                    //cart.add("Carrot : $carrotPrice");
                    //-------------------------------------ADD
                    break;
                  case 2:
                    break;
                }
  }
  void potatoInfo(){
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
                    //cart.add("Potato : $potatoPrice");
                    //-------------------------------------ADD
                    break;
                  case 2:
                    break;
                }
  }
  void tomatoInfo(){
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
                    //cart.add("Tomato : $tomatoPrice");
                    //-----------------------------------------ADD
                    break;
                  case 2:
                    break;
                }
  }
  void vegeSum(){
    int vegetableTotal = totalPriceCarrot+totalPricePotato+totalPriceTomato;
    print("$vegetableTotal");
  }
}
class ledLightClass extends VegetableClass{
  int totalPriceSyska = 0;
  int totalPriceTShaped = 0;
  int totalPriceChargeable = 0;

  void ledInfo(){
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    print("LED-Light Details : ");
    print("");
    print("Press 1 to Buy ");
    print("Press 2 to Exit ");
    print("");
  }
  void syskaInfo(){
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
                    //cart.add("Syska : $syskaPrice");
                    //-----------------------------------ADD
                    break;
                  case 2:
                    break;
                }
  }
  void tShapedInfo(){
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
                    //cart.add("T-Shaped : $tShapedPrice");
                    //------------------------------------------ADD
                    break;
                  case 2:
                    break;
                }
  }
  void chargeableInfo(){
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
                    //cart.add("Chargeable : $chargeablePrice");
                    //-----------------------------------------------ADD
                    break;
                  case 2:
                    break;
                }
  }
  void ledSum(){
    int ledTotal = totalPriceSyska+totalPriceTShaped+totalPriceChargeable;
    print("$ledTotal");
  }
}
class Cart extends ledLightClass{
  void cartInfo(){
    int cartTotal = coffeeTotal+waferTotal+vegetableTotal+tShirtTotal+ledTotal;
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
class VoidAccess extends superStoreExit{}

void main(){
  stdout.write("How many Customer ID's you want : ");
  int length = int.parse(stdin.readLineSync()  ?? "0");
  List cart = [];
  List<Customer> customers = List.generate(length, (index) {
    VoidAccess  voidAccess = new VoidAccess();
    voidAccess.setData();
    return voidAccess;
  });
  customers.forEach((element) {
    element.getData();
  });

}
