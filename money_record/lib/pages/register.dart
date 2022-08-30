import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPages extends StatelessWidget {
  const RegisterPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset(
                "assets/ic_money.png",
                scale: 5,
                color: Colors.lightGreen,
              ),
              SizedBox(height: 40),
              Column(
                children: [
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
                  SizedBox(height: 40),
                ],
              ),
              BottomAppBar(
                elevation: 10,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    // fixedSize: Size(177, 56),
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    maximumSize: Size(MediaQuery.of(context).size.width, 50),
                    textStyle: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {},
                  child: Text("Register"),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?  ",
                    style: TextStyle(fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Login",
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
        ),
      ),
    );
  }
}
