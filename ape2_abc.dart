// ape2_abc.dart   Making libraries, lists, arrays and sets.. 
// in this example all 3 classes are instantiated in libraries...
// Move apeman2  to apeman3  with 3 ifferent parts...

library ape2_abc;



part 'ape2_ape.dart';
part 'ape2_hum.dart';
part 'ape2_pro.dart';
//  humanlib  is still in a little messy state...


void main() {
//  print(DateTime parse("2012-02-27 13:27:00"));
//  print(time);
//  print(date);
  print("Hey, Ape!!  Wellcome, Human!  How do you do? programmer!!, \n ");

  
  
  var programmer = new Programmer();
    programmer.doProgJob(); 
    programmer.doProgFeeding();
    programmer.doProgThinking();
    programmer.doProgEndOfDay();
  
    
    
  var ape = new Ape();
    print(ape.apeClassBeginsMessage); 
    ape.doApeWakeUp();
    ape.doApeFeeding();
    ape.doApeDailyJob();
    print("=  Monkey Day happy Over, going to sleep    = \n \n");
  
  
  var human = new Human();
    print('Hey I am a Human.  that sounds Great!!  New day for Human beginning...');  
    human.printHumanNames();
    human.printTsempList();
    human.printHumanNum();
    human.printHumanJob();
    print('Human Work Day is over...   time to go to sleep..');

    
    /*    
    human.dailyFood = "Breakfast, Lunch & evening coffee";   
    print('I eat  ${human.mealsADay}');    
      for(var i = 0; i < human.mealsADay; i++) {  
      print("Human wants a cup of coffee!!  Now!");
      print(human.apeThink);
      }

*/

}


