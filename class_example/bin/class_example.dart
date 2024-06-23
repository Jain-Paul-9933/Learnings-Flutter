import 'person.dart';

void main(List<String> arguments) {
  // final person = Person('Jain Paul', 25);
  // // person.name = 'Jain';
  // print(person.name);
  // print(person.age);
  final person = Person('Jain', 25);
  // print(person._name);
  // print(person._age);
  // print(person.getName());
  // print(person.getAge());
  print(person.name);
  print(person.age);
  person.setName = 'Paul';
  person.setAge = 23;
  print(person.name);
  print(person.age);
  person.sayHai();
}
