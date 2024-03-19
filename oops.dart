// //--------------------OOPS CONCEPT WITH EXAMPLE----------------------------------
//to show result please uncomment the functions seperately

// //class - collection of objects
// class Person{
//     String name;
//     int age;

//     void sayHello(){
//         print('Hello $name');
//     }
// }
// void main(){
//     var per =Person();
//     per.name ='Dhruvi';
//     per.sayHello();//output Hello Dhruvi
// }



// //Encapsulations use public, private, protected keyword to binding a data togather.Security purpose
// class BankAccount{
//    double _balance;
//    double get balance =>_balance;

//    void deposite(double amount){
//       _balance +=amount;
//    }

//    void withdraw(double amount){
//     if(_balance <amount){
//       print('Insuffecient balance')
//     }else{
//       _balance -=amount;
//     }
//    }
// } 
// void main(){
//   var myaccount =BankAccount();
//   myaccount.deposite(2000);
//   myaccount.withdraw(1000);
// }



// //inheritance - class derive in subclasses - For reusability purpose
// //override - two class has to call same function name and call them
//  class Animal{
//   String name;

//   void sound(){
//     print("Animal make sound");
//   }
//  }
//  class Dog extends Animal{
//   @override
//   void sound(){
//     print("dog barks");
//     super.sound();
//   }
//  }
//  void main(){
//   var dog1 =Dog();
//   dog1.sound();
//   }
//   //output: 
//   //dog barks (ex of inheritance)
//   //Animal make sound (ex of overriding use @override keyword and call through suprer keyword)         
 



 
//  //multiple inheritance - one subclass inherit from 2 super classes
//  //use with keyword in c,c++ And in dart it implement using mixings
// class A{
//   void method1(){
//     print("call method1");
//   }
// }
// class B {
//   void method2(){
//     print("call method2");
//   }
// }

// class C with A,B{
//   void method3(){
//     print("call method3");
//   }
// }
// void main(){
//   var c =C();
//   c.method1(); //output:call method1
//   c.method2(); //output:call method2
//   c.method3(); //output:call method3
 
// }


// //using mixin
// //used keyword - with
// mixin class MXN{
//   void mixinmethod(){
//     print("call mixin");
//   }
// }

// class MethdB with MXN{
//   void mxmethod2(){
//     print("call method2");
//   }
// }

// class MethdC with MXN{
//   void mxmethod3(){
//     print("call method3");
//   }
// }
// void main(){
//   var methodb =MethdB();
//   var methodc =MethdC();

//   methodb.mixinmethod(); //output: call mixin
//   methodc.mixinmethod(); //output: call mixin
//   methodb.mxmethod2(); // //output: call method2

// }




// //multilevel inheritance use extends keyword
// class AA{
//   void method11(){
//     print("call method1");
//   }
// }
// class BB extends AA{
  
//   void method22(){
//     print("call method2");
//   }
// }

// class CC extends BB{
//   void method33(){
//     print("call method3");
//   }
// }

// void main(){
//   var c1 =CC();
//   c1.method11(); //output:call method1
//   c1.method22(); //output:call method2
//   c1.method33(); //output:call method3

// }


// //polymorphism - trate a different classes object as a single object
// //implement using overloading and overriding
// class Shape{
//   void message(){
//     print("call shape");
//   }
// }

// class Circle extends Shape{
//   @override
//   void message(){
//     print("call circle");
//   }
// }

// class Triangle extends Shape{
//   @override
//   void message(){
//     print("call triangle");
//   }
// }

// void main(){
//   Shape circle =Circle();
//   Shape triangle =Triangle();

//   circle.message();
//   triangle.message();
// }



// //overloading - same class diff type arguments
// class Maths{
//   void add(int a, int b){
//     var ans =a+b;
//     print('$ans - first method');
//   }

//   void add(double a, double b){
//     var ans =a+b;
//     print('second method $ans');
//   }
// }
// void main(){
//   var math =Maths();
//   math.add(2,5); //output: 7 - first method
//   math.add(2.5,1.5);//output: 4 - second method
// }


// //abstract class - class which can not be instantiated means we can not make instance of this class
// //it have abstract method or not abstract method
// //abstract method - method wich does not have any body
// //keyword - abstract
// abstract class Shape1{
//   void draw();//abstract method
//   void calculate(){
//     print("shape calculation");
//   };
// }

// class Circle1 extends Shape1{
//   @override
//   void draw(){
//     print("drawig a circle");
//   }
// }

// class Square1 extends Shape1{
//   @override
//   void draw(){
//     print("drawig a square");
//   }
// }

// void main(){
//   var circle =Circle1();
//   var square =Square1();
  
   
//   circle.draw(); //output - drawing a circle
//   square.draw(); //output - drawing a square

//   circle.calculate(); //output - shape calculation
//   square.calculate(); //output - hape calculation
// }


// //interface - it serve as a contract that define set of the method that class implement
// //it facinate code reusability, abstraction, encapsulation, enhancing code modularity and flexibility
// //in other language like c, c++ used interface keyword
// //but in dart it doesn't dedicated using interface keyword, 
// //instead, any class can act as interface and other classes implement it by providing required methods 
// //implements keyword used in dart

// class Flyable{
//   void fly(){
//     print("something is flying");
//   }
// }
// class Bird implements Flyable{
//   @override
//    void fly(){
//     print("Bird is flying");
//   }
// } 

// class Airoplane implements Flyable{
//   @override
//   void fly(){
//     print("Airoplane in flying");
//   }
// }

// void main(){
//   var a1 =Airoplane();
//   var b1 =Bird();

//   a1.fly(); //output: Airoplane is flying
//   b1.fly(); //output: Bird is flying
// }

// //constructor - this method automatically called when objeect is created

// class Student{
//   int rollno;
//   String name;
//   int age;

//  Student(this.rollno, this.name, this.age); //default

//  Student.fromBirthYear(year){
//   name ="Dhruvi";
//   rollno =1;
//   age =DateTime.now().year-year;
//  }//named

//  void sayHello(){
//   print("hello $name");
//  }
// }
// void main(){
//   var stud1 =Student(1,"Riya",18);//it called default constructor
//   var stud2 =Student.fromBirthYear(1984);//it called named constructor
  
//   stud1.sayHello(); //output: hello Riya
//   stud2.sayHello(); //output: hello Dhruvi
// }




// //----------------keywords---------------------------------------------------------------------------------




// //static member in class - used all across any page in app or website using class name
// //static keyword used

// //const keyword & final keyword - both used to make variable mutable
// //but final assign value only once
// //and cons must be initialized value of constant at compile time

// class Friends{
//   static String first = "Raj";
//   static String second = "Dhruvi";
//   static String third ="Right";
// }
// void main(){
//   var displayFirst = Friends.first;
//   print(displayFirst); //output: Raj

//   var displaySecond =Friends.second;
//   print(displaySecond); //output: Dhruvi

//   var displayThird =Friends.third;
//   print(displayThird); //output: Right

//   final String country ="India";
//   //country ="USA" :give an error because it set only once
//   const double pi =3.145
//  //const double radius = getRadius() :this give an error because constant var must be initialized at compile time
// }



