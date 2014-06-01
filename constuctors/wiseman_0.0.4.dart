//  01.6.2014  hkl    building and playing with Dart constructors
//                   W I S E M A N   _0.0.4
//  hacking constructors using   I N N E R  and   O U T E R  variables
//  W I S E gets it's W I S E dom from man, or data, or net, or by mail
//  DO NOT CHANGE, READY, in GitHub.  Next version.. in a week..?

import 'dart:math';     // this is only for because point example

//  NOTE:  avoid using proper object names in documentation..
//  W I S E M A N   0        occurences
//   I N N E R     12.   O U T E R:   8 


// W I S E    extends this class.  Moved this at the beginning...

class Knowledge {
  String info  =  'This is Knowledge class';
  String motto =  'K N O W L E D G E   is base of humankind..';
  void showInfo() => print(info);
}



//  class Wise is instantiated only with it four constructors
// TODO:  make this abstract ??
class Wise extends Knowledge {
  num x, y;
  //  must set motto here becouse super class have no instance
  String motto = 'W I S E D O O M   rises you high!! ';

  
 //   functions that are INSIDE the W I S E  -class are: I N N E R
 //  TODO  How to share these functions only to their OWN instances?
  num innerMan() {
    print('I N N E R m a n   func');
    return 7;  // just some value and num return to avoid: BORING!!
  }
  
  num innerData() {
    print('I N N E R m d a t a   func');
    return 8;
  }
  
  num innerNet() {
    print('I N N E R n e t   func');
    return 9;
  }
  
  num innerMail() {
    print('I N N E R m a i l   func');
    return 11;
  }

  // execute functions that are OUTSIDE of this classes body
  // these are all:    O U T E R
  void executeOutFuncs() {
    num v = outerMan();
    num x = outerData();
    num y = outerMail();
    num z = outerMail();
  }

  // some funnyBunny-functions here to get OWN FUNCTIONALITY
  // this will eventually be ESSENCE OF    W I S E M A N   -class...
  String innerFunny() {
    print('......... having funny time..');
    return ('funnyFunc, the Mighty One..');
  }

  String innerYearn() {
    print('......... having yearning time..');
    return ('yearnFunc, the sad and lonely one..');
  }

  // constructors.      example copied from:
  //  https://www.dartlang.org/articles/idiomatic-dart/#constructors
  //  TODO  write actual code to these math functions...
  Wise.Man(this.x, this.y); // Own logic from this app
  
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
//  should first be:  xxxxMan   ?
var wise = new Wise.Man(2, 3);
var wiseData = new Wise.Data();
var wiseNet  = new Wise.Net();
var wiseMail = new Wise.Mail(PI, 4.0);


void main() {
//  is this right place to initialize these fields...?  
// ERROR:   wise.Man.motto  = (' Be wise and share all you know..'); 
// This is not a named constructor.. but usual.. 
  wise.motto  = (' Be wise and share all you know..'); 
 
  wiseData.motto  = 'D A T A    extends uman  knowledge';
  wiseNet.motto   = ' N E T    connects human knowledge  '; 
  wiseMail.motto  = 'M A I L   gives you means to connect people';
   
  
//
  print('=================================  main begins');

  print('executing four functions, that USES instances of W I S E M A N ');
  testMan();
  testData();
  testNet();
  testMail();
  
  print('-------------------------------   executing out funcs..');
  //TODO   how every instance of W I S E    executes this... 
  wise.executeOutFuncs();   //      executeOutFuncs(); 



  print('----------------------------- happy and yearn classes...   ');
  String happy = wise.innerYearn();
  String yearn = wise.innerFunny();
  print(happy);
  print(yearn);



  print(' ===========================================  main ends');

}

//  functions, that CONSTRUCTORS mediate to  W I S E M A N

void testMan() {
  print('----------------------    testing W I S E   -    M A N ');
  print(wise.motto);
  print('How much is wise.x + wise y ?   ');
  print(wise.x + wise.y);
  wise.innerMan;
  print('---------------------------------        Over');
}


void testData() {
  print('----------------- T E S T  -  D A T A  using vars inside the class');
  print(wiseData.motto);
  wise.innerData;
  print('--------------------------------over');
}


void testNet() {
  print('----------------------    testing  W I S E  -   N E T');
  print(wiseNet.motto);

  //  using  I N N E R N E T  (); function from inside   W I S E M A N  -class
  wise.innerNet;
  print('-----------------------------------over');
}

void testMail() {
  print('----------------------   testing   W I S E  -  M A I L');
  print(wiseMail.motto);
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





/*   Output: 

C:\Users\Public\dart\dart-sdk\bin\dart.exe --enable-checked-mode --debug:54036 wiseman_0.0.4.dart
=================================  main begins
executing four functions, that USES instances of W I S E M A N 
----------------------    testing W I S E   -    M A N 
 Be wise and share all you know..
How much is wise.x + wise y ?   
5
---------------------------------        Over
----------------- T E S T  -  D A T A  using vars inside the class
D A T A    extends uman  knowledge
--------------------------------over
----------------------    testing  W I S E  -   N E T
 N E T    connects human knowledge  
-----------------------------------over
----------------------   testing   W I S E  -  M A I L
M A I L   gives you means to connect people
----------------------------------over
-------------------------------   executing out funcs..
M a n    M A N    M A N     M A N     M A N!!!
D A T A     D A T A ... d a t a !!  D A T A  !!!
M a i l    m a i l     M A I L      M A I L   !!!
M a i l    m a i l     M A I L      M A I L   !!!
----------------------------- happy and yearn classes...   
......... having yearning time..
......... having funny time..
yearnFunc, the sad and lonely one..
funnyFunc, the Mighty One..
 ===========================================  main ends


*/ 
