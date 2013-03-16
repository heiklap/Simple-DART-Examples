//  ape2_pro.dart

part of ape2_abc;                    

class Programmer extends Human { 

  String programmerMessage = "We are now in Programmer classs  ";
  String dailyFood = "Pizza & KFC & Black coffee";
  String dailyProblem = "Do I call this a feature or a bug...";  
  String dailyJob  = "Solving problems and creating more complicated problems...";
  String progThinking = " ..do others think That I am a Great Programmer?  ";
  num mealsADay = 2;

void doProgJob() {   
  print(programmerMessage);
  print('... You asking what I am doing?? '); 
  print('My Job is  $dailyJob');
  print(dailyProblem);  
  print('  ');
  }

void doProgFeeding() {
  print('My daily food is:  $dailyFood'); 
  if (isHungry) print('I want $dailyFood');
  if (isHungry) print(dailyFood);
    for(var i = 0; i < mealsADay; i++) {
    print('this programmer wants now  $dailyFood');
    print(apeThink);
    }
    print('  ');
 }

void doProgThinking() {
   print(progThinking);
   print('  ');
}

void doProgEndOfDay() {
  print(" ==  Hooray!!   Im Done My Job I am Going Home !!   == \n  \n");  
}
}




/*    Here becomes the Great   PROGRAMMER LIST
 *    
 * class Car {
  var name;
  Car(this.name);
}

void main() {
  List<Car> cars = new List<Car>();
  cars.add(new Car("Toyota"));
  cars.add(new Car("Rusty"));
  cars.add(new Car("Pinto"));

  for (final car in cars) {
    car = new Car("Honda"); // b/c final this errors, in the dart editor and at compile time  
    print(car.name);
  }
  
  for (final Car car in cars) {
    car = new Car("Honda"); // b/c final this errors, in the dart editor and at compile time 
    print(car.name);
  }

  for (var car in cars) {
    car = new Car("Honda"); // will mutate and reassign
    print(car.name);
  }
  
  for (Car car in cars) { 
    car = new Car("Honda"); // will mutate and reassign 
    print(car.name);
  }
}   */ 



