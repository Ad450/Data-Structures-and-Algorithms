
// import 'dart:io';

// void main(){
  
//   ATM atm = ATM();
//   User user = User();
  
  
//   ATM.insertCard();
  
//   atm.enterPin(user);
  
//   try{
//     var pin = int.parse(stdin.readLineSync()!);
    
//     while(pin != user.pin){
//       print("incorrect pin");
//        pin = int.parse(stdin.readLineSync()!);
//     }
//     atm.validatePin(user, pin);
    
//   }catch(e){
//     print(e);
//   }
  
//   atm.printOptions();
  
//   try{
//     var option = int.parse(stdin.readLineSync()!);
    
//     while(option < 0 && option > 6){
//       print("select options from 1 to 6 only");
//       atm.printOptions();
//       option = int.parse(stdin.readLineSync()!);
//     }
    
//     var selectedAmount = atm.validateOption(option);
    
//     var balance = atm.balance(user , selectedAmount);
    
//     print("please customer, your remaining amount is $balance.");
    
//   }catch(e){
//     print(e);
//   }
  
  
// }



// // simulating a user
// // dummy amount of 500 gh cedis
// // pin of user

// class User {
//   int _pin = 1234;
//   int amount = 500;

//   bool cardInserted = true;

//   int get pin => _pin;
// }

// //
// // simulating atm
// // we will tell the user to insert atm card.....assume atm card is inserted by boolean expression
// // require user to enter pin
// // log options to the console for user to select from....only one option can be selected at a time
// // based on selected option, check if amount in users account is more than selected option
// // if YES, ask approval from user, else tell user his/her account balance is low
// // set user's account balance == 500 - selected option
// // if user approves , print a message saying an amount of selected option is cashed out from account;

// class ATM {
//   static void insertCard() {
//     print("please insert card");
//   }

//   void enterPin(User user) {
//     if (user.cardInserted) {
//       print("please enter pin");
//     } else {
//       print("please insert card");
//     }
//   }

//   void validatePin(User user, int pin) {
//     if (pin == user.pin) {
//       print("select options ");
//     } else {
//       print("incorrect pin");
//     }
//   }

//   void printOptions() {
//     print("1. 50 \n 2. 100 \n 3. 150 \n 4. 200 \n 5. 250 \n 6.300");
//   }

//   int validateOption(int selectedOption) {
//     int amountSelected = 0;

//     if (selectedOption == 1) {
//       amountSelected = 50;
//     } else if (selectedOption == 2) {
//       amountSelected = 100;
//     } else if (selectedOption == 3) {
//       amountSelected = 150;
//     } else if (selectedOption == 4) {
//       amountSelected = 200;
//     } else if (selectedOption == 5) {
//       amountSelected = 250;
//     } else if (selectedOption == 6) {
//       amountSelected = 300;
//     }
    
//     return amountSelected;
//   }
  
//   int balance(User user, int selectedOptionAmount){
//     return user.amount - selectedOptionAmount;
//   }
// }
