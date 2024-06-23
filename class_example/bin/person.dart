class Person {
  String _name;
  int _age;

//getter variables
  int get age {
    return _age;
  }

  String get name {
    return _name;
  }

  //setter methods
  set setName(String nameValue) {
    _name = nameValue;
  }

  set setAge(int ageValue) {
    _age = ageValue;
  }

// getter methods
  int getAge() {
    return _age;
  }

  String getName() {
    return _name;
  }

  Person(this._name, this._age);

  // Person.ageBelow50(this.name, this.age) {
  //   print(name);
  // }

  // Person.ageAbove50(this.name, this.age) {
  //   print(name);
  // }

  void sayHai() {
    print("Hai");
  }
}
