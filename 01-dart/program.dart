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
  nos.forEach((int no){
    print("no : $no");
  });

  print("Using where");
  var evenNos = nos.where((int no){
    return no % 2 == 0;
  }).toList();
  print(evenNos);

  print("Using reduce");
  var sum = nos.reduce((int n1, int n2){
    return n1 + n2;
  });
  print("sum : $sum");
}