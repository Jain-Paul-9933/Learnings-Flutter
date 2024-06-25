//Inheritance

mixin Animal {
  int age = 0;
  void sayHello() {
    print('Mixin hello');
  }
}

mixin Animal2 {
  int age = 2;
  void sayHello();
}

class Human with Animal, Animal2 {
  @override
  void sayHello() {
    print('Hello Hello');
  }

  void sayName() {
    print('Name');
  }
}

// class Human extends Animal {
//   void sayName() {
//     print('Say Name');
//   }

//   @override
//   void sayHello() {
//     print("say hello human");

//     super.sayHello();
//   }
// }

void main(List<String> arguments) {
  final human = Human();
  human.sayHello();
  human.sayName();
}
