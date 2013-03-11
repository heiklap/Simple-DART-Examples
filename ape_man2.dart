// developing apeman.dart just a little bit further...
// Class members concatenation and printing..  for -control flow construction...
// in this very simple dart-example all 3 classes are instantiated...


class Ape {
  String  dailyFood    =  "Eating juicy banana...  ";
  num     mealsADay    =  4;
  String  dailyJob     =  "Scratching my head..... ";
  bool    isHungry     =   true;
  String  apeThink   =   "hmmmmmm  ";
}

class Human extends Ape {
  String humanThink = "What do others think about me..?  ";
 }


class Programmer extends Human {
  String programmerThink = "Do I call this a feature or a bug...";
}

void main() {
  print("Hey, Ape!!  Wellcome, Human!  How do you do? programmer!!, \n ");

  var programmer = new Programmer();
  
  programmer.dailyFood = "Pizza & KFC & Black coffee";
  programmer.dailyJob  = "Solving problems and creating more complicated problems...";
  programmer.mealsADay = 2;
  
  print('My daily food is:  ${programmer.dailyFood}');
  print('My Job is  ${programmer.dailyJob}');
  
  if (programmer.isHungry) print('I want ${programmer.dailyFood}');
  if (programmer.isHungry) print(programmer.dailyFood);
  print(programmer.humanThink);
  print(' You asking what I am doing?? ');
  for(var i = 0; i < programmer.mealsADay; i++) {
    print('this programmer wants now  ${programmer.dailyFood} ');
    print(programmer.apeThink);
  }
  print("===   End of class programmer.     printing   === \n  \n");
  
  
  var ape = new Ape();
  print('Apes day is beginning... hooray!!  ');
  print('Apes daily food is:  ${ape.dailyFood}');
  print('Apes daily job.. well, it is...  ${ape.dailyJob}');
    for (var i = 0; i < ape.mealsADay; i++){
      print ('Grour.. eating Banana...');
      print(ape.apeThink);
      if (ape.isHungry) print("Ape wants MORE Bananas!! ");    
    }
    
  print("===   End of class ape.    printing   ===, \n, \n");
  
  
  var human = new Human();
  print('Hey I am a Human.  that sounds Great!!  New day for Human beginning...');
  human.dailyFood = "Breakfast, Lunch & evening coffee";
  print('Human Job is:   ${human.dailyJob}');  // same that monkey does.. LOL!!
  print(' Ou nou!!  ${human.humanThink}');
  print('I eat  ${human.mealsADay}');
  for(var i = 0; i < human.mealsADay; i++) {
    print("Human wants a cup of coffee!!  Now!");
    print(human.apeThink);
  }
  print("===   End of human class printing   ===, \n");
  
}


/*   Output of this program is:   
Hey, Ape!!  Wellcome, Human!  How do you do? programmer!!, 
 
My daily food is:  Pizza & KFC & Black coffee
My Job is  Solving problems and creating more complicated problems...
I want Pizza & KFC & Black coffee
Pizza & KFC & Black coffee
What do others think about me..?  
 You asking what I am doing?? 
this programmer wants now  Pizza & KFC & Black coffee 
hmmmmmm  
this programmer wants now  Pizza & KFC & Black coffee 
hmmmmmm  
===   End of class programmer.     printing   === 
  

Apes day is beginning... hooray!!  
Apes daily food is:  Eating juicy banana...  
Apes daily job.. well, it is...  Scratching my head..... 
Grour.. eating Banana...
hmmmmmm  
Ape wants MORE Bananas!! 
Grour.. eating Banana...
hmmmmmm  
Ape wants MORE Bananas!! 
Grour.. eating Banana...
hmmmmmm  
Ape wants MORE Bananas!! 
Grour.. eating Banana...
hmmmmmm  
Ape wants MORE Bananas!! 
===   End of class ape.    printing   ===, 
, 

Hey I am a Human.  that sounds Great!!  New day for Human beginning...
Human Job is:   Scratching my head..... 
 Ou nou!!  What do others think about me..?  
I eat  4
Human wants a cup of coffee!!  Now!
hmmmmmm  
Human wants a cup of coffee!!  Now!
hmmmmmm  
Human wants a cup of coffee!!  Now!
hmmmmmm  
Human wants a cup of coffee!!  Now!
hmmmmmm  
===   End of human class printing   ===, 



*/
