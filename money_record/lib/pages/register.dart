import 'package:flutter/material.dart';

class RegisterPages extends StatelessWidget {
  const RegisterPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/ic_money.png"),
            ),
            SizedBox(height: 75),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: "type name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: "type email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: "type password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 75),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                fixedSize: Size(177, 56),
                textStyle: TextStyle(fontSize: 24),
              ),
              onPressed: () {},
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
