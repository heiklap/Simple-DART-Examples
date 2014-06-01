//  27.5.2014  hkl    building  Dart   constructors
//  beginned from point example.    W I S E M A N   _0.0.2
//  hacking constructors using inner and outer variables
//  wise gets it's wisedom from man, or data, or net, or by mail
//  READY    in GitHub.   do not change...

import 'dart:math';


//  TODO:   methods  yes   no    why  should renamed to...?
//     europa,   africa,  australia,  asia.    SO THEY CAN BE FOUND
//    silver, bronze, copper
// W I S E M A N    constructors:  consider, quess, 
//  yes    21   12   occurances
//  no     23   14
//  why    18   11
//  W I S E M A N   ...   63   51
//  New:  inner   19.   outer:   13



class Wise extends Knowledge {
  num x, y;
    
//   functions that are INSIDE the W I S E M A N   -class
//  using  outer functions with inner vars.
  num innerMan  = outerMan();       //   3 / 2
  num innerData = outerData();      //   3 / 2
  num innerNet  = outerNet();       //   3 / 2
  num innerMail = outerMail();      //   3 / 2
  
  // make some funnyBunny-functions here
  // this is ESSENCE OF    W I S E M A N   -class...
 String innerFunny() {
   print('......... having funny time..');
   return('funnyFunc, the Mighty One..');
 }
  
 String innerYearn() {
   print('......... having yearning time..');
   return('yearnFunc, the sad and lonely one..');
 }
 
 // constructors.      example copied from: 
 //  https://www.dartlang.org/articles/idiomatic-dart/#constructors
 //  TODO  write actual code to these math functions...
 Wise(this.x, this.y);           // Own logic from this app
  Wise.Data()                  
      : x = 0,
        y = 0;
  Wise.Net()               
      : x = 2,
        y = 3;
  // math example here has nothing to do with Mail...
  Wise.Mail(num theta, num radius) {  
    x = cos(theta) * radius;
    y = sin(theta) * radius;
  }
}


//  creating four different instances of  W I S E M A N -class...

var wise    = new Wise(2, 3);   
var wiseData = new Wise.Data();  
var wiseNet  = new Wise.Net();   
var wiseMail = new Wise.Mail(PI, 4.0); 


void main () {    
  print('=================================  main begins');
  
print('executing four functions, that USES instances of W I S E M A N ');
  testMan(); 
  testData(); 
  testNet(); 
  testMail();
  
//  print('testing returned values from inside  W I S E M A N  -class');
//  print(wise.innerMan); 
//  print(wise.innerData);
//  print(wise.innerNet);
//  print(wise.innerMail);
  
 print('----------------------------- happy and yearn classes...   ');
  String happy = wise.innerYearn(); 
  String yearn = wise.innerFunny();
  print(happy);
  print(yearn);
  
  

  print(' ===========================================  main ends');

}  

//  functions, that CONSTRUCTORS mediate to  W I S E M A N   

void testMan() {
  String tr = 'testReason';
  print(wise.motto);
  print('----------------------using vars inside the class');
  print('How much is wise.x + wise y ?   ');
  print(wise.x + wise.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  I N N E R M A N   (); function from inside wise-class 
  wise.innerMan;
  print('---------------------------------Over');
}


void testData() {
  String tr = 'testReason_yes';
  print(wiseData.motto);
  print('----------------------using vars inside the class');
  print('How much is wise.x + wise y ?   ');
  print(wise.x + wise.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  I N N E R D A T A  (); function from inside    W I S E M A N   -class 
  wise.innerData;
  
  print('--------------------------------over');
} 

void testNet(){
  String tr = 'testReason_No';
  print(wiseNet.motto);
  print('----------------------using vars inside the class');
  print('How much is wise.x + wise.y ?   ');
  print(wise.x + wise.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  I N N E R N E T  (); function from inside   W I S E M A N  -class 
  wise.innerNet;
  print('-----------------------------------over');
} 

void testMail(){
  String tr = 'testReason_why';
  print(wiseMail.motto);
  print('----------------------using vars inside the class');
  print('How much is wise.x + wise.y ?   ');
  print(wise.x + wise.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  I N N E R M A I L  (); function from inside  W I S E M A N  -class 
  wise.innerMail;
  print('----------------------------------over');
}



//  functions, that are OUTSIDE of the    W I S E M A N  -class
//TODO  class instances should handle only their OWN part of this

num outerMan() {
  print('M a n    M A N    M A N     M A N     M A N!!!'); 
  return 7;
}

num outerData() {
  print('D A T A     D A T A ... d a t a !!  D A T A  !!!'); 
  return 23;
}

num outerNet() {
  print('N e t    N e t    N E T     N E T     N E T     !!!'); 
  return 59;
}

num outerMail() {
  print('M a i l    m a i l     M A I L      M A I L   !!!'); 
  return 235769386;
}


// wise extends this
class Knowledge {
  String info = 'This is Knowledge class';
  String motto = 'Good question, now searching explanations' ; 
  void showInfo() =>  print(info); 
}





