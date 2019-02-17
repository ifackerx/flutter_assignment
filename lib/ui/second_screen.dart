import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SecondScreenState();
  }
}

class SecondScreenState extends State<SecondScreen> {
   final _formVal = GlobalKey<ScaffoldState>();

  final TextEditingController val_email = TextEditingController();
  final TextEditingController val_pw = TextEditingController();
  final TextEditingController val_confirm_pw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      key: _formVal,
      appBar: AppBar(
        centerTitle: true,
        title: Text("REGISTER"),
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your email",
                icon: Icon(Icons.email),
                fillColor: Colors.blue
                
              ),

              // obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              controller: val_email,
             
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input your password",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              controller: val_pw,
            ),
              TextFormField(
              
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Please input your password",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              controller: val_confirm_pw,
            ),
            RaisedButton(
              color: Color.fromRGBO(41, 147, 243, 1),
              child: Text("CONTINUE"),
              textColor: Colors.white,
              onPressed: (){
              if (val_email.text.isEmpty == true || val_pw.text.isEmpty == true || val_confirm_pw.text.isEmpty ==true) {
                _formVal.currentState.showSnackBar(SnackBar(content: Text('กรุณากรอกข้อมูลให้ครบถ้วน')));
              }
              else if (val_email.text == 'admin') {
                _formVal.currentState.showSnackBar(SnackBar(content: Text('user นี้มีอยู่ในระบบแล้ว')));
              }
              else if (val_pw.text != val_confirm_pw.text) {
                _formVal.currentState.showSnackBar(SnackBar(content: Text('password ไม่ตรงกัน')));
              }else{
                Navigator.pop(context);
              }
            },
            ),
          ],
        ),
      ),
      ),
    );
  }

}