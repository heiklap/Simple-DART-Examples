// ape_man3.dart   Making libraries, lists, arrays and sets.. 
// in this example all 3 classes are instantiated in libraries...
// Move apeman2  to apeman3  with 3 ifferent parts...

library ape_man3;

part 'apelib3.dart';
part 'humanlib3.dart';
part 'proglib3.dart';
//  ape_man3.dart  in a quite messy state with it's libraries..

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
  print(programmer.programmerThink);  
  print(programmer.programmerMessage);
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
  print(ape.apeMessage);  
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
      var hs = 'Human says: ';
      }
    print('Ihmisten numerot tässä...');
    print(humanNum[2]); 
      for (var i = 0; i < 7; i++) {
        print(humanNum[i]);
      }
    var x = printHumanNames();



}

