import 'package:baraa_gallery/Widgets/homepage.dart';
import 'package:baraa_gallery/Widgets/welcomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Services/login-service.dart';

//Widget 1
class Titleofpage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(top:100),
      child: Center(
          child: Text('Log in',
            style:TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          )
      ),
    );

  }
}

//Widget 2
class Logo extends StatelessWidget{
  double? num;
  double? num2;
  Logo(this.num,this.num2);

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Image.asset('assets/image5.png',width:num ,height: num2),
    );
  }
}



//Widget 3
class Field extends StatelessWidget{
  String? hinttext;
  final TextEditingController controller;
  Field({this.hinttext,required this.controller});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width*0.9,
      height: 50,
      child: TextField(
        controller:controller ,
        decoration:InputDecoration(
          hintText:hinttext,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}


//Widget 4-Sign Up Button.
class Button extends StatelessWidget {
  String name;
  double num3;
  final Function onPressed;
  Button(this.name, this.num3,{ required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width*0.5,

        child:
        ElevatedButton(onPressed: ()
        {
          onPressed();
        },
            style: ElevatedButton.styleFrom(
                backgroundColor:Colors.pink
            ),
            child: Text(name,
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                )
            )
        )
    );
  }
}













//Main Feature
class Login extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.pink, Colors.white]),
              ),
              child: Column(
              children: [
                SingleChildScrollView(
                  reverse: true,
                  padding: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .viewInsets
                        .bottom + 20,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 1),
                      Titleofpage2(),
                      SizedBox(height: 40),
                      Logo(200, 200),
                      SizedBox(height: 20),
                      Field(
                          hinttext: "Enter your Email",
                          controller: _emailController),
                      SizedBox(height: 10),
                      Field(hinttext: "Enter your Password",
                          controller: _passwordController),
                      SizedBox(height: 10),
                      Field(hinttext: "Enter your Code",
                          controller: _codeController),
                      SizedBox(height: 20),
                      Button(
                          "Log in",
                          500,
                          onPressed: () async {
                              try {
                                String emailLog = _emailController.text;
                                String passwordLog = _passwordController.text;
                                String securecode = _codeController.text;

                                LoginService loginn = LoginService(
                                    emailLog, passwordLog, securecode);

                                if (!loginn.notNull()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("The empty value is invalid."),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                  return false;
                                }
                                print("data sent");

                                if (!loginn.checkEmail()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Email is not correct"),
                                        backgroundColor: Colors.red),
                                  );
                                  return false;
                                }

                                if (!loginn.checkPassword2()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          "Password must be at least 8 characters."),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                  return false;
                                }
                                print("Processing Done!");

                                bool success = await loginn.SendDataToLoginAutherSarver();
                                print("Data sent to Auth_login_service");

                                if (success) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => HomePage()),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Login Field"),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Login failed with error: $e")),
                                );
                              }
                            },
                            ),
                      SizedBox(height: 50),
                      Flowbutton(WelcomePage(), "Back", 20, 150,30,Colors.pink,Colors.white,Image.asset('assets/back.png')),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          )
          )
      );
    }
  }
