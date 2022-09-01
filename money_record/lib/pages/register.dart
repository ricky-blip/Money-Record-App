import 'package:flutter/material.dart';
import 'package:money_record/pages/login.dart';

class RegisterPages extends StatelessWidget {
  const RegisterPages({Key? key}) : super(key: key);

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
                  //SECTION 1:IMAGE
                  Image.asset(
                    "assets/ic_money.png",
                    scale: 5,
                    color: Colors.lightGreen,
                  ),
                  SizedBox(height: 40),
                  //SECTION 2: TEXT FIELD
                  Column(
                    children: [
                      //NOTE Name
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.green),
                          hintText: "type name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.lightGreen, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      //NOTE Email
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.green),
                          hintText: "type email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.lightGreen, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      //NOTE Password
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.green),
                          hintText: "type password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.lightGreen, width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                  //SECTION 3: BUTTON
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BottomAppBar(
                      elevation: 10,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // shape: StadiumBorder(),
                          primary: Colors.lightGreen,
                          minimumSize: Size(
                            MediaQuery.of(context).size.width,
                            50,
                          ),
                          maximumSize: Size(
                            MediaQuery.of(context).size.width,
                            50,
                          ),
                          textStyle: TextStyle(fontSize: 24),
                        ),
                        onPressed: () {},
                        child: Text("Register"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  //SECTION 4: NOTE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?  ",
                        style: TextStyle(fontSize: 12),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPages(),
                            ),
                          );
                        },
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
            ],
          ),
        ),
      ),
    );
  }
}
