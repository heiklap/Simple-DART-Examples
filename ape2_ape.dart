// ape2_ape.dart   

part of ape2_abc;


class Ape {
  String  apeClassBeginsMessage   =  "We are now in ape classs  ";
  String  dailyFood    =  "Eating juicy banana...  ";
  num     mealsADay    =   9;
  String  dailyJob     =   "Scratching my head..... ";
  bool    isHungry     =   true;
  String  apeThink     =   "hmmmmmm  ";

 
  void doApeWakeUp() {
    print('Apes day is beginning... hooray!!  ');
    print('Apes was sleeping high in the tree...');
    print('  ');
  }
  
  void doApeDailyJob() {
    print('Apes daily job.. well, it is...  $dailyJob');
    print('  ');
  }
  
  void doApeFeeding() {
  print('Apes daily food is:  $dailyFood');  
  for (var i = 0; i < mealsADay; i++){
      if (i == mealsADay-2) {
      print('Two more bananas to go...');
      }
    print ('Grour.. eating Banana...');
    print(apeThink);
    if (isHungry) print("Ape wants MORE Bananas!! ");    
  }
  print('');
}

  
}



