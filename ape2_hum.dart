//  ape2_hum.dart  

part of ape2_abc;




var humanNames = [
    'Matti'  ,
    'Olli '  ,
    'Kalle'  ,      
    'Pekka'  ,      
    'Heikki'  ,      
    'Lauri'  ,      
    'Jukka'  ,       
    ];


var tsempList = [
    'Virkistysajattelu',
    'Unelmointi',
    'Toiveajattelu',
    'Itsesuggestio',
    'Tsemppaus',
    'Sisuuntuminen'
    ];


var humanNum = [1,2,3,4,5,6,7];


class Human extends Ape {  // WARNING:   no such type as ape  ?? why??
  String humanThink = "What do others think about me..?  ";
  String humanMessage = "We are now in Human classs  ";

//  Functio joka tulostaa ihmisten nimet, kutsutaan pääähojelman Main:ssa.
  void printHumanNames() {
    print('Ihmisten nimet ovat tässä...');
    for (var i = 0; i < humanNames.length; i++) {
    print(humanNames[i]);
    }
  }  
  
  
  void printTsempList() {
    print('Ihmisen olisi hyvä tehdä näitä...');
    for (var i = 0; i < tsempList.length; i++) {
      print(tsempList[i]);
    }
  }
   
  
  void printHumanNum() {
    print('Ihmisten numerot tässä...');
    for (var i = 0; i < humanNum.length; i++) {
    print(humanNum[i]);
    }
  }

  void printHumanJob() {
    print('Human Job is:   ${dailyJob}');  // same that monkey does.. LOL!!
    num jobCounter = 0;
      for (var i = 0; i < humanNum.length; i++) {
      print(humanNum[i]);
      jobCounter = (jobCounter + humanNum[i]);
      print('työlaskuri ');
      print(jobCounter);
      }
  print(' Ou nou!!  ${humanThink}');
  }

}


  
/*
for (var i = 0; i < numList.length; print(numList[i]); i++){
  print(numList[i]);
}  

for (var y = 0; y < toiveList.length; y++){
  print(toiveList[y]);
}
  
  print(human.humanMessage);
  print("===   End of human class printing   ===, \n");

*/

