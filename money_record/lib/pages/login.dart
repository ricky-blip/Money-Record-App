import 'package:flutter/material.dart';
import 'package:money_record/pages/register.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/ic_money.png",
                    scale: 5,
                    color: Colors.lightGreen,
                  ),
                  SizedBox(height: 40),
                  Column(
                    children: [
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
                      SizedBox(height: 40),
                    ],
                  ),
                  BottomAppBar(
                    elevation: 10,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        // fixedSize: Size(177, 56),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 50),
                        maximumSize:
                            Size(MediaQuery.of(context).size.width, 50),
                        textStyle: TextStyle(fontSize: 24),
                      ),
                      onPressed: () {},
                      child: Text("Login"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account yet?  ",
                        style: TextStyle(fontSize: 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPages(),
                            ),
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.lightGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
