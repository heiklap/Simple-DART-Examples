//  29.5.2014  hkl    building and playing with dart constructors
//  beginned from point example.    W I S E M A N   _0.0.3
//  hacking constructors using  I N N E R  and O U T E R  variables
//  wise gets it's wisedom from man, or data, or net, or by mail

//   Structure still same..  big name changes:
//   some methods are either   I N N E R    or  O U T E R  to main class
//   THIS FILE is   FROZEN and in GitHub.   do not change

import 'dart:math';

//  Ssome names are used too often.. must change them for clarity
//  TODO:   methods  yes   no    why  should renamed to...?
//     europa,   africa,  australia,  asia.    SO THEY CAN BE FOUND
//    silver, bronze, copper
// W I S E M A N    constructors:  consider, quess,
//  yes / no / why     2 / 7 / 2   occurances

//  W I S E M A N   0 
//   I N N E R     12.   O U T E R:   8 

// Fatal error:   named constructors must bed of type: Xxxxx.yyyyy
// change this abstract and rename   W I S E M A N
class Wise extends Knowledge {
  num x, y;
  //  Why must write String here??
  String motto = 'W I S E D O O M   rises you high!! ';

  //   functions that are INSIDE the W I S E M A N   -class
  //  using  O U T E R    functions with   I N N E R   vars.


  num innerMan() {
    print('I N N E R m a n   func');
    return 7;
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

  void executeOutFuncs() {
    num v = outerMan();
    num x = outerData();
    num y = outerMail();
    num z = outerMail();
  }

  // make some funnyBunny-functions here
  // this is ESSENCE OF    W I S E M A N   -class...
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
  Wise(this.x, this.y); // Own logic from this app
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
// NOTE: named constructors use syntax:  Xxxx.Yyyyy
var wise = new Wise(2, 3);
var wiseData = new Wise.Data();
var wiseNet  = new Wise.Net();
var wiseMail = new Wise.Mail(PI, 4.0);


void main() {
/*   PROBLEM:  can not set these fields...
  String Wise.motto; //    = (' Be wise and share all you know..'); 
  String Something      = (' Be wise and share all you know..'); 
  String wiseData.motto = 'D A T A    extends uman  knowledge';
  String wiseNet.motto  = ' N E T    connects human knowledge  '; 
  String wiseMail.motto = 'M A I L   gives you means to connect people';
  
* */ 
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


// wise extends this
class Knowledge {
  String info = 'This is Knowledge class';
  String motto = 'K N O W L E D G E   is base of humankind..';
  void showInfo() => print(info);
}




