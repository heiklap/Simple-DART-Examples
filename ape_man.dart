//  apeman.dart   5.3.2013.   simple dart example. 
//  for presenting how dart classes are created, extended and instantiated.
//  developing this still further...

// This class exists simply for others to extend
class Ape {
  String apeFood = "Eating juicy banana...  ";
  String apeJob  = "Scratching my back..... ";
  bool wannaMoreBananas = true;
  num weightKg = 28;
}

//  Human class learns something from apes and gives it forward..
//  class human do not get instantiated (used) in this example..
class Human extends Ape {
  String humanThinking = "What do others think about me..?  ";
  num weightKg = 78;
 }

class HumansWife {        //  This class is here just to celebrate international Womans Day  8.3. 
  num weightKg = 67;      //  Will use this class in later programs
  String OuSheIs "Ou!  She Is so...   Eternal Inner Beauty...  "
}


// this class will have an instance AND it uses properties
// inherited from other classes
class Programmer extends Human {
  String progJob = "Solving problems. And producing new and more complicated problems...";
  num weightKg = 102;                 // 102             ( and counting  :(     LOL!)
}
/*
  main is where every DART program begins to execute.  TYPE Void is strictly a note to You and your
  programmer friends.  It tells that main is not intended to return any value. 
  If there is num or String instead of void, THEN main would return a value. 
*/
void main() {
  print("Hei, Apina!!  Terve, Ihminen!  Moikka, ohjelmoija!!  ");

// here Programmer class will be instantiated with keyword: new, to p.
// note, that class type: Programmer is with BIG P. Its instance is with SMALL p.  !!
  var p = new Programmer();

// Class programmer, p. !! uses some ancient ape skills witch it inherited..
  print(p.apeFood);                                     //  Eating juicy banana... 
  print(p.apeJob);                                      //  Scratching my back.....
  if (p.wannaMoreBananas) print('I Wanna More Bananas !!');     //  I Wanna More Bananas !!

 // Programmer class have also inherited all of human properties.. 
  print(p.humanThinking);                               //  What do others think about me..? 

  // this programmer do not have many his OWN skills yet,
  // He thinks only his Job.  Should give him more properties... 
  print(' You asking what I am doing?? ');
  print(p.progJob);                      //  "Solving problems. And producing new and more complicated problems..."
  print(p.weightKg);                       // ( WTF!!  This must be a BUG!!)  Stomach overflow..

  print("===   End of program   ===");
}

/*   Output of program should be this:
Hei, Apina!!  Terve, Ihminen!  Moikka, ohjelmoija!!  
Eating juicy banana...  
Scratching my back..... 
What do others think about me..?  
I Wanna More Bananas !!
 You asking what I am doing?? 
"Solving problems. And producing new and more complicated problems..."
102
===   End of program   ===

NEXT:   Maybe some functions and more properties...
*/
