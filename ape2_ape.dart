// ape2_ape.dart   Here comes The Ape.. beginning of Evolution
// Simple Dart Example prpograms for beginners, 3 / 2013 
//
//  28.3.2013 ape got a map   
//  

part of ape2_abc;


class Ape {
  String  apeClassBeginsMessage   =  "We are now in ape classs  ";
  String  dailyFood    =  "Eating juicy banana...  ";
  num     mealsADay    =   9;
  String  dailyJob     =   "Scratching my head..... ";
  bool    isHungry     =   true;
  String  apeThink     =   "hmmmmmm  ";
  var apeNumMap = new Map();               // Use a map constructor.  
  
//  this map is using map literal... 
  var apeMap = {                  // A map literal
//    Keys       Values
     'bath'     : 'water bound',
     'bananas'  : 'banana tree',
     'shadow'   : 'leavy tree'
  };

  
  
  //  now wanna do apeMap with numbers as keys
  //  Giving map to Ape, right from Dart examples

  void fillApeNumMap() { 
    apeNumMap[1] = 'clouds in the sky..';            // Key is 1; value is ''.
    apeNumMap[2] = 'water in a creeck..';            // Key is 2; value is ''.
    apeNumMap[5] = 'green grass under hometree';     // Key is 5; value is ''.
 // A map value can be any object, including null.  
  }
  
  void printApeNumMap() {
    print('==========     beginning of ape num map');
    print(apeNumMap[1]);
    print(apeNumMap[2]);
    print(apeNumMap[5]);
    print('============    End of ape num map .......');
  }
 
  void doApeWakeUp() {
    print('Apes day is beginning... hooray!!  ');
    print('Apes was sleeping high in the tree...');
    print('  ');
  }
  
  void doApeDailyJob() {
  //  TODO:   this _a  system is  ugly and verbose.. use toString
    var _a = apeMap['bath'];
    var _b = apeMap['bananas'];   
    var _c = apeMap['shadow'];   
    print('Apes daily job.. well, it is...  $dailyJob');
    print('Ape feelin dirty...   $_a');
    print(apeMap['bath']);
    fillApeNumMap();
    printApeNumMap();
//  this prints now...   
// Ape feelin dirty...  
//  {bath: water bound, bananas: banana tree, shadow: leavy tree}.bath 
    
    print('Ape ou ou hungry      $_b');
    print('Ouuu Ouuu too hot here   $_c');  
    print('Ape is HUNGRY again!!    $toString(apeMap["bananas"])');
//  TODO:  This prints:  Ape is HUNGRY again!!    Closure: (dynamic) 
//    => String from Function 'toString':.(apeMap["bananas"])
//    {bath: water bound, bananas: banana tree, shadow: leavy tree}.  
    print(' $apeMap.  ');
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





