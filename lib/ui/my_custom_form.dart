import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<ScaffoldState>();

  final TextEditingController val_email = TextEditingController();
  final TextEditingController val_pw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _formKey,
      body: 
      Container(
        padding: EdgeInsets.all(40),
        child: Form(
        child: ListView(
          children: <Widget>[
            Image.asset("resources/profile.jpg"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "User Id",
                icon: Icon(Icons.person),
              ),

              // obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              controller: val_email,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              controller: val_pw,
            ),
            RaisedButton(
              child: Text("LOGIN"),
             onPressed: () {
              if (val_email.text.isEmpty == true || val_pw.text.isEmpty == true) {
                _formKey.currentState.showSnackBar(SnackBar(content: Text('กรุณาระบุ user or password')));
              }else if (val_email.text == 'admin' && val_pw.text == 'admin') {
                _formKey.currentState.showSnackBar(SnackBar(content: Text('user or password ไม่ถูกต้อง')));
              }else{
                Navigator.pushNamed(context, "/first");
              }
            }
            ),
            Container(
              child: FlatButton(
                child: Text("Register New Account",
                style: TextStyle(color: Color.fromRGBO(151, 148, 211, 1)),),
                onPressed: () {
           
                    Navigator.pushNamed(context, "/second");
                  
                },
              ),
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
        ),
      ),
    );
  }
}
