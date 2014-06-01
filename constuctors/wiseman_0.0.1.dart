//  27.5.2014  hkl    building  Dart constructors
//  beginned from point example.    wiseman_0.0.1
//  hacking constructors using inner and outer variables

import 'dart:math';


//  rename  say  to tell
//  TODO:   methods  yes   no    why  should renamed to...?
//     europa,   africa,  australia,  asia.    SO THEY CAN BE FOUND
//    silver, bronze, copper
// wiseman constructors:  consider, quess, 
//  yes    21   occurances
//  no     23
//  why    18 
//  wiseman...   63 



class Wiseman extends Explanation {
  num x, y;
    
//   functions that are INSIDE the wiseman-class
//  TODO   why are these put together...?
  // rename to "answerXxxx" something
  num sR = sayReason(); 
  num sYes = sayYes();
  num sNo = sayNo();
  num sWhy = sayWhy(); 
  
  // make some funnyBunny-functions here
  // this is ESSENCE OF wiseman-class...
 String funnyFunc() {
   print('......... having funny time..');
   return('funnyFunc, the Mighty One..');
 }
  
 String yearnFunc() {
   print('......... having yearning time..');
   return('yearnFunc, the sad and lonely one..');
 }
 
 // constructors.      example copied from: 
 //  https://www.dartlang.org/articles/idiomatic-dart/#constructors
 //  TODO  write actual code to these math functions...
 Wiseman(this.x, this.y);           // Own logic from this app
  Wiseman.yes()                     // Wiseman.Net    nwiseNet
      : x = 0,
        y = 0;
  Wiseman.no()                      // WisemanMail  wiseMail
      : x = 2,
        y = 3;
  Wiseman.why(num theta, num radius) {     // WisemanData  wiseData
    x = cos(theta) * radius;
    y = sin(theta) * radius;
  }
}


//  creating four different instances of  wiseman-class...

var wiseman    = new Wiseman(2, 3);
var wisemanYes = new Wiseman.yes();
var wisemanNo  = new Wiseman.no();
var wisemanWhy = new Wiseman.why(PI, 4.0);


void main () {    
  print('=================================  main begins');
  
//  executing four functions, that USES instances of wiseman.
  testReason(); 
  testYes(); 
  testNo(); 
  testWhy();
  
  // testing returned values from inside wiseman-class
  // 
  print(wiseman.sR); 
  print(wiseman.sYes);
  print(wiseman.sNo);
  print(wiseman.sWhy);
  
 
  String happy = wiseman.yearnFunc(); 
  String yearn = wiseman.funnyFunc();
  print(happy);
  print(yearn);
  
  

  print(' ===========================================  main ends');

}  

//  functions, that CONSTRUCTORS mediate to wiseman

void testReason() {
  String tr = 'testReason';
  print(wiseman.motto);
  print('----------------------using vars inside the class');
  print('How much is wiseman.x + wiseman y ?   ');
  print(wiseman.x + wiseman.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  sayReason(); function from inside wiseman-class 
  wiseman.sR;
  print('---------------------------------Over');
}


void testYes() {
  String tr = 'testReason_yes';
  print(wisemanYes.motto);
  print('----------------------using vars inside the class');
  print('How much is wiseman.x + wiseman y ?   ');
  print(wiseman.x + wiseman.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  sayYes(); function from inside wiseman-class 
  wiseman.sYes;
  
  print('--------------------------------over');
} 

void testNo(){
  String tr = 'testReason_No';
  print(wisemanNo.motto);
  print('----------------------using vars inside the class');
  print('How much is wiseman.x + wiseman y ?   ');
  print(wiseman.x + wiseman.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  sayNo(); function from inside wiseman-class 
  wiseman.sNo;
  print('-----------------------------------over');
} 

void testWhy(){
  String tr = 'testReason_why';
  print(wisemanWhy.motto);
  print('----------------------using vars inside the class');
  print('How much is wiseman.x + wiseman y ?   ');
  print(wiseman.x + wiseman.y) ;
  print('----------------------using vars OUTSIDE the class');
//  using  sayReason(); function from inside wiseman-class 
  wiseman.sWhy;
  print('----------------------------------over');
}



//  functions, that are OUTSIDE of the  wiseman-class
//TODO  class instances should handle only their OWN part of this
// rename these to: outer... outerYes...
num sayReason() {
  print('wiseman.. wiseman?  wiseman!!  wiseman!!!'); 
  return 7;
}

num sayYes() {
  print('Yes     yes... yes!!   yes  YES!!!'); 
  return 23;
}

num sayNo() {
  print('No   no... no?   no!    NO NO NO!!!'); 
  return 59;
}

num sayWhy() {
  print('Why... why?   why!!  why?   WHY!!!'); 
  return 235769386;
}


// wiseman extends this
class Explanation {
  String info = 'This is explanations class';
  String motto = 'Good question, now searching explanations' ; 
  void showInfo() =>  print(info); 
}





