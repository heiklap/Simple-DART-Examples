//  apeman.dart   5.3.2013.   simple dart example. 
//  for presenting how dart classes are created, extended and instantiated.
//  developing this still further...

// This class exists simply for others to extend
class Ape {
  String apeFood = "Eating juicy banana...  ";
  String apeJob  = "Scratching my back..... ";
  bool wannaMoreBananas = true;
}

//  Human class learns something from apes and gives it forward..
//  class human do not get instantiated (used) in this example..
class Human extends Ape {
  String humanThinking = "What do others think about me..?  ";
 }


// this class will have an instance AND it uses properties
// inherited from other classes
class Programmer extends Human {
  String progJob = "Solving problems. And producing new and more complicated problems...";
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

 // and Programmer class uses also some human properties.. 
  print(p.humanThinking);                               //  What do others think about me..? 

  // this programmer do not have many own skills yet,
  // but we can print out, what he/she is thinking
  print(' You asking what I am doing?? ');
  print(p.progJob);                      //  "Solving problems. And producing new and more complicated problems..."

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
===   End of program   ===


*/
