enum Color { red, green, blue }
enum Category { Stationary, Utencil, Electronics }

void main(){
  /* variable declarations */
  // int age = 32;
  

  //strongly typed
  //type inference
  /* 
  var age = 32;
  // the following will throw an error
  age = "thirty two";
  print(age); 
  */

  // loosely typed 
  dynamic age = 32;
  age = "thirty two";
  print(age);

  // numeric types
  /* 
  int salary = 10000
  double salary = 10000.50; 
  */

  num salary = 10000; // 10000.50
  print(salary + 2000);

  //useful methods on numberic types
  // parse(), toString(), tryParse()

  String  value = "17";
  var a = int.parse(value); // String-to-int conversion
  var b = double.parse("0.77"); //String-to-double conversion


  print("a = " + a.toString());

  //nullable types

  // int x; //non-nullable int
  int? x; //nullable int
  print(x);


  //strings
  /* 
    - can be enclosed with "" OR ''
    - interpolation is supported $variable OR ${expression}
    - use """ for string in multiple lines
   */
  
  //
  var name = "Magesh";
  print("Hi $name, Have a nice day!");

  var firstName = "Magesh";
  var lastName = "Kuppan";
  print("Hi ${firstName + ' ' + lastName}, Have a nice day!");


  //multiline strings
  /* 
  var cityDesc = 'Hyderabad is the capital of Telangana'
  'It is an IT HUB of the country'; 
  */

  var cityDesc = """Hyderabad is the capital of Telangana
  It is an IT HUB of the country""";
  print(cityDesc);

  // enum type
  

  Category productCategory = Category.Stationary;
  print(productCategory);

  //List (aka Arrays)
  // List<double> scores = new List<double>(); // to be fixed
  var scores = [97.5,99,23,78.5];
  print(scores[0]);
  print(scores[1]);

  // List manipulation
  var nos = [3,1,4,2,5];

  print("Using forEach");
  /* 
  nos.forEach((int no){
    print("no : $no");
  }); 
  */
  // using arrow function
  nos.forEach((no) => print("no : $no"));
  

  print("Using where");
  var evenNos = nos.where((no) => no % 2 == 0).toList();
  print(evenNos);

  print("Using reduce");
  var sum = nos.reduce((n1, n2) => n1 + n2);

  print("sum : $sum");

  print("Named paramters");
  // print(multiply(x : 100, y : 200));
  // print(multiply(x : 300));
  // print(multiply(y : 200));
  print(multiply());

  // Using classes
  // var p = new Person("Magesh", "Kuppan");
  var p = new Person();
  p.full_name = "Magesh Kuppan";
  // print(p.full_name);
  p.display();
}

// using default arguments
int multiply({ int x = 10,  int y = 20}){
  return x * y;
}

//using "required"
/* 
int multiply({required int x, required int y}){
  return x * y;
} 
*/

class Person{
  // Instance variables
  String first_name = '';
  String last_name = '';

  // constructor
  /* 
  Person(String first_name, String last_name){
    this.first_name = first_name;
    this.last_name = last_name;
  } 
  */

  // named constructor
  // Person(this.first_name, this.last_name);

  //getter
  String get full_name {
    return "${this.first_name} ${this.last_name}";
  }

  void set full_name(String value){
    var names = value.split(' ');
    this.first_name = names[0];
    this.last_name = names[1];
  }

  display(){
    print("first name = ${this.first_name}, last name = ${this.last_name}");
  }
}