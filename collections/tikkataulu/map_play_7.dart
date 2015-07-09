///   hkl  9.7.2015  edu/bin  0.0.7 -version of tikkataulu

///   Playing with dart maps and lists
///   This "game" / simulation: 30 players throw Dart (tikka) one at a time, until
///   get one of numbers 1-10, and they are right away named to the teams 1-10
///   accordingly.  Random-generator gives throw-results according to frequence-
///   table. Un-Teamed players throw again, till they are "teamed".
///   Last three players are "force-teamed" to some non-full-team.. for to shorten program run.
///   This is not meant to be GLORIOUS code, (maybe later )  just a practice.

///
///
/// TODO:   make  this (or some player..)  to use   Server - Client ??
/// TODO:   make  this (or some player..)  to use  IndexedDB ??
/// TODO:   or:    Use  HTML-page
///

//  Special method to quick-team last three players to teams OK
//
//  added  totalThrows AND throwsInThisRound   count  OK




import 'dart:math';          //  for random-number generator


///  frequence of results
Map <int, int> frequenceM = {       //  numbers-Probability
  1  :  5,
  2  :  9,
  3  : 18,
  4  : 19,
  5  : 17,
  6  : 14,
  7  : 11,
  8  :  7,
  9  :  4,
  10  :  2
  //  makes  106,   0:s  not counted
};

///  this comes filled from frequenceM  map
List <int> keysFreqL = [];
//  length of keysFreqL   = 106;       //   my quess this whole frequence

///  player data
Map <int,int> playersM = {};       //  30   players
List <int> teamedPlayersL = [];
final int playersCount = 30;          //  Added players from 27 to 30
//  make this sometime to 27, for to make game more difficult / different

int throwRound = 0;         //  max  8 is enough in every case.. or..?
int totalThrows = 0;        //  180 - 210  and now  ~ 90

bool allTeamed = false;
final int maxInTeam = 3;

///  Team data   Value field is List of integers
///  TODO  Map  can you search  value  here??
Map  <int,List<int>> teamsM = {
  1  : [],
  2  : [],
  3  : [],
  4  : [],
  5  : [],
  6  : [],
  7  : [],
  8  : [],
  9  : [],
  10  : []
};


//  Trying without this   Map <int,List<int>> tempTeamsM = {};


///  ---------------------------------------    main
void main() {
  makeFrequenceTable();
  //  something to handle ALL  players
  createPlayersMap();

  throwRound = 1;
  allTeamed = false;

  do {

    doThrowRound(throwRound);
    presentTeams();
  } while (!allTeamed);

  presentTeams();
  print('Total Throws:  $totalThrows');
  playersM.forEach((k,v) {print('$k, $v'); });
  print('----------   teamed pleyers');
  teamedPlayersL.forEach(print);
}


//  ----------------------------------------------------  frequence table
//  I do not want to watch or think this..   lol  Can I really write this :)
void makeFrequenceTable() {
  print('..................  making frequenzeTable ...');
  String _s = '';
  int _numbCount = 0;
  String _tmpStr = frequenceM.length.toString();
  print('NR: of possible values:   $_tmpStr');
  print('----------  Handle Tikkataulu  -------------');

  frequenceM.forEach((k, v) {
    //  print('$k, $v');
    var _zz = 0;
    _s = '';
    String _dPoint = ':  ';
    for (var _zFreq = 1; _zFreq < v+1; _zFreq++) {      //  outsch    v+1
      _zz = _zFreq;
      _s = (_s + ' ' + k.toString());
      keysFreqL.add(k);     //  ADD KEY  !!!
      _numbCount++;
    }
    print('$_zz  $_dPoint   $_s');
  });                               //  note this end of "forEach.."
  _s = '';

  print('Numbers count in frequence list:  $_numbCount');
  //
  print('..................   frequenzeTable ok ...');
}


void createPlayersMap() {
  for (int i = 1; i < playersCount+1; i++) {           //  +1 ..   ugly
    var tempPlayersMap = {i: 0 };     //  value field empty
    //  NOT EMPTY, BUT  0
    playersM.addAll(tempPlayersMap);
  }
  print('===========================   players map created');
  //  How do you print a map:
  //  playersM.forEach((k, v) {print('$k, $v');});
}


/// ------------------  play: every player throws one time
void doThrowRound(int howMany) {              //  reserving parameter for future usage
  print('----------  handling all players  ------------');
  print('----------   going round  $howMany  ----------');

  int throwsInThisRound = 0;
  int nowThrowing = 0;       //  max  30    made this int and public
  int nowResult   = 0;       //  max  10   ( value of local var not used...   hmmmm..?
  var random = new Random();     //  starting random generator

  for (int _i = 1; _i < playersCount+1; _i++) {

    nowThrowing = _i;
    //  only un-teamed players are throwing here
    if (!teamedPlayersL.contains(nowThrowing)) {

    nowResult = keysFreqL[random.nextInt(keysFreqL.length)];    //  one of   106
    totalThrows ++;                                      // + also teamed Players
    throwsInThisRound ++;

      print('/////////////////    player $nowThrowing is not yet teamed');

    //  Normal work-flow, for  first  27 palyers
    if (teamedPlayersL.length+3 < playersCount) {
      addToTeam(nowResult, nowThrowing);
    } else {
      //  add player to highest-number free team
      //  special workflow, for handling last 3 players quick
      addToTeam(notFullTeam(), nowThrowing);
      print('added  $nowThrowing  to team');
      }

      Map <int, int> _tempPlayerM = {nowThrowing : nowResult}; // no better way to add to Map ??
      //  THIS MIGHT DO MANY no-needed   TRYES TO ADD TO playersM  lol
      playersM.addAll(_tempPlayerM);
    }

    //  adding value to map
    //   playersM.putIfAbsent(nowThrowing, () => nowResult    //  NO  SUCCESS
    //  playersM.putIfAbsent(nowThrowing, () { nowResult;  //  NO  SUCCESS  ???
    //  print('hello world'); } );
  }

  //TODO    makeAllTeamedCheck();
  throwRound++;
  print('throws in this round:  $throwsInThisRound');
  print('total throws:  $totalThrows');

  
  if (teamedPlayersL.length == playersCount) {
    print('======== END.  ALL PLAYERS ARE IN TEAMS  ==========');
    allTeamed = true; };

  //  adding throw rounds, cos last 3 players are hard to teamm
  //  Desperate try to make last 3 players to form team:  10
  if (throwRound == 30) {
    print('#############################  throw round is 25   ############');
    allTeamed = true;   //  backdoor for now
  };

  presentPlayers();
}



//  ---------------------------------------------------
void addToTeam(playerResult, playerNumber) {
  //TODO  save value of team key,  for to change  value-String-field
  //  Handle no more than 3 members in teamsM

  //TODO  no comprendo  does this work opposite !!??

  //  separated two nested  if clauses
  //  note:  [playerResult]  is index to team
  if  (teamsM[playerResult].length < maxInTeam) {   //  no fourth player in team
    teamsM[playerResult].add(playerNumber);
    teamedPlayersL.add(playerNumber);     //  add it also to teamed-list
  }
}

//  Not needed,  was just one thinking..
void handleLastThree(int teamNum, int nowThrowing) {

if (twoLeft()) {
  addToTeam(teamNum, nowThrowing);
  print('  ################  hooray, was only 2 left');
};

  if (oneLeft()) {
  addToTeam(teamNum, nowThrowing);
  print('  ################  hooray, was only 1 left');
};
}

//  This is used... new in this 0.7.  version
num notFullTeam() {      // note: returns last one of non-full-teams
  int xTeam = 0;
  for (int i = 1; i < 11; i++){
    if (teamsM[i].length < 3) {xTeam = i;};
  }
  return xTeam;      //  OOPS   0  is unwanted return
}

//  Not needed
bool twoLeft (){
  bool rValue = false;
  if (teamedPlayersL.length+2 == playersCount) {
  rValue = true;
  };
  return rValue;
}

//  not neded
bool oneLeft (){
  bool rValue = false;
  if (teamedPlayersL.length+1 == playersCount) {
    rValue = true;
  };
  return rValue;
}

//  ------------------------------------------------------------------------------
void presentTeams() {
  print('----------------    teamsM are: ');
  teamsM.forEach((k,v) {print('$k, $v'); });
  print('----------------------    teamsM done...');
}


void presentPlayers() {
  print('----------  printing all playersM, then print:    -----------');
  playersM.forEach((k, v) {
    print('$k, $v');
  });
  print('--------   all players printed ---------  ');
}




///  some notes and help info

//  A function that does sort a Map of List on their length.

//  import 'dart:collection';

/// sorts the ListMap (== A Map of List<V>) on the length
/// of the List values.
/*
LinkedHashMap sortListMap(LinkedHashMap map) {
  List mapKeys = map.keys.toList(growable : false);
  mapKeys.sort((k1, k2) => map[k1].length - map[k2].length);
  LinkedHashMap resMap = new LinkedHashMap();
  mapKeys.forEach((k1) { resMap[k1] = map[k1] ; }) ;
  return resMap;
}
 */
/*
V putIfAbsent(K key, Function V ifAbsent())


Look up the value of key, or add a new value if it isn't there.

Returns the value associated to key, if there is one. Otherwise calls ifAbsent to get a new value, associates key to that value, and then returns the new value.

Map<String, int> scores = {'Bob': 36};
for (var key in ['Bob', 'Rohan', 'Sophena']) {
scores.putIfAbsent(key, () => key.length);
}
scores['Bob'];      // 36
scores['Rohan'];    //  5
scores['Sophena'];  //  7
Calling ifAbsent must not add or remove keys from the map.

*/

