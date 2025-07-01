import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // this will be built as long as we are runing this app
  // print(9 == 9);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final String name = "Mekdi";
  int age = 21;
  double num = 4.3;
  bool istrue = false;
  int x = 100;
  String grade = "A";
  // when we have const class we must have const / final varibles instead we can't

  // the comparetor
  // == equal to
  // != not equal to
  // > greater than
  // < less than
  // >= greater than or equal to
  // <= less than or equal to
  // && and
  // || or
  /* control flow
  if statement 
  if(condition){
  print()
  }
  for loops
  draw circle
   for each / for loop 
   for (int i =0 ;i <= 3; i++){
   }
    same as c++

    the while loop 
    while(condition ){
    print(i)
    if (i == 10){
    t = False;
    }
    i++;
    }
    funtions are method they are used 
    void greet(){
    }
    
  */
  void greet() {
    print("hello Guest");
  }

  void greetP(String name) {
    print("hello miss " + name);
  }

  int add(int a, int b) {
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    // print(age > 18);
    // print(istrue && (age > 20));
    // if (age > 20) {
    //   print("not pedo");
    // } else if (age == 20) {
    //   print("onpoint");
    // } else {
    //   print("pedo");
    // }
    // switch (grade) {
    //   case "A":
    //     print("very Good");
    //     break;
    //   case "B":
    //     print("Avarage");
    //     break;
    //     defaut:
    //     print("error");
    //     break;
    // }
    //  using for loops
    for (int i = 1; i <= 3; i++) {
      if (i == 3) {
        break;
      }
      print(i);
    }
    List<String> names = ["mekdi", "andi", "hiwi"];
    Set<String> set1 = {"ayele", "kebede", "chala"};
    greet();
    greetP("mekdi");
    int y = add(3, 5);
    print(y);
    for (int i = 0; i < names.length; i++) {
      print(names[i]);
    }
    for (var item in set1) {
      print(item);
    }
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //to remove the debug sign on the above we use this
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 77, 133),
        appBar: AppBar(
          title: Text("my app Bar"),
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.login))],
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(height: 100, width: 100, color: Colors.deepPurpleAccent),
            Container(
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 125, 39, 68),
            ),
            Container(width: 100, height: 100, color: Colors.white),
          ],
        ),
        // body: Center(

        //   child: Container(
        //     height: 100,
        //     width: 200,

        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(20),
        //       color: Colors.deepPurpleAccent,
        //     ),
        //     padding: EdgeInsets.all(25),

        //     // child: Text(
        //     //   "I love Mekdi",
        //     //   style: TextStyle(
        //     //     color: Colors.white,
        //     //     fontSize: 25,
        //     //     fontWeight: FontWeight.bold,
        //     //   ),
        //     // ),
        //     // child: Icon(
        //     //   Icons.favorite,
        //     //   color: const Color.fromARGB(255, 255, 255, 255),
        //     //   size: 64,
        //     // ),
        //   ),
        // ),
      ),
    ); //matrial app
  }
}
