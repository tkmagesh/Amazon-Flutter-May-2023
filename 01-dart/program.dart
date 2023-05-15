
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
  enum Category {
    Stationary,
    Utencil,
    Electronics
  }
  
  Category productCategory = Category.Stationary;
  print(productCategory);
}