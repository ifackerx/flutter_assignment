import 'package:flutter/material.dart';
import './ui/first_screen.dart';
import './ui/second_screen.dart';
import './ui/detail_screen.dart';
import './ui/my_custom_form.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => MyCustomForm(),
        "/first": (context) => MyHomePage(),       
        "/second" : (context) => SecondScreen(),
        "/detail" : (context) => DetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home :DefaultTabController(
        length: 5,
        child: (Scaffold(
          appBar: AppBar(
            title: Text('Home'),
              centerTitle: true,
            
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Home",),),
              Center(child: Text("Notify"),),
              Center(child: Text("Map"),),
              Center(child: Text("Profile"),),
              Center(child: Text("Setup"),),
            ],
            
            ),
            bottomNavigationBar: new Column(
              mainAxisSize: MainAxisSize.min,
              children:[new Material(
              child: TabBar(
                tabs:[
                Tab(icon: Icon(Icons.dashboard)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.explore)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.settings)),],
              ),
              color: Colors.blue,
              )],
              ),
            )
        )),
      );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyHomePageState(); //return ตัวลูกไปหาแม่; return class ข้้างล่าง เพราะอะไรไม่รู้?
//   }

// }


// class MyHomePageState extends State<MyHomePage> { //อันล่าง entends แม่ ละอันบนลงมาล่าง
//   int counter = 0; //แสดงผ๋ล
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("hello World!!"),
//       ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("$counter"),
//             Text("value"),
//             Text("data")
//           ],
//         ), //ตัว text เป็น child ของ Center

//         //stateless เหมาะกับใช้ครั้งเดียวเลิก แสดงผลไม่ต้องจำ เบากว่า จำเป็น
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             setState(() {
//               counter++;
//             });  // ต้องตั้ง setState
//             print("Conter value $counter");
//           },
//         )//ปุ่มอะไรสักอย่าง,
      
//     );
//   }
//   }


// class MyHomePage extends StatelessWidget {
//   int counter = 0; //แสดงผ๋ล

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
    // return Scaffold(
//       appBar: AppBar(
//         title: Text("hello World!!"),
//       ),
//         body: Text("$counter"),

//         //stateless เหมาะกับใช้ครั้งเดียวเลิก แสดงผลไม่ต้องจำ เบากว่า จำเป็น
//         floatingActionButton: RaisedButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             counter++;
//             print("Conter value $counter");
//           },
//         )//ปุ่มอะไรสักอย่าง,
      
//     );
//   }
  
// }