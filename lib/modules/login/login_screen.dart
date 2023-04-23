import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test2/modules/home/home_layout.dart';
import 'package:test2/modules/sign_up/sign_up_screen.dart';

import '../../forget_password/forgetPass1_screen.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formField = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passController = TextEditingController();

  bool passToggle = true;
  final _numberOnlyFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formField,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage('assets/images/login2.jpg'),
              ),
              SizedBox(
                height: 30,
              ),

              Center(
                child: Container(
                  width: 300,
                  height: 75,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Email';
                      }
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value);
                      if (!emailValid) {
                        return 'Enter Valid Email';
                      }
                    },
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(50),
                    ],
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                  ),
                ),
              ),
              // SizedBox(height: 10.0,),
              Center(
                child: Container(
                  width: 300,
                  height: 70,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter password';
                      }
                    },
                    controller: passController,
                    textAlign: TextAlign.center,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 50.0),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPass1()),
                      );
                    },
                    child: Text(
                      'forget password ?',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 12.0,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  width: 302,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formField.currentState!.validate()) {
                        print('success');
                        emailController.clear();
                        passController.clear();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home1()),
                        );
                      }
                    },
                    child: Text(
                      'Log-in',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/images/google.png'),
                      width: 40,
                      height: 40,
                    ),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/images/facebook.png'),
                      width: 50,
                      height: 50,
                    ),
                  )),
                  Container(
                      child: MaterialButton(
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/images/apple.png'),
                      width: 80,
                      height: 80,
                    ),
                  )),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text(" Haven't an Account? "),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: Text(
                      'Sign-Up',
                      style: TextStyle(
                          color: Colors.cyan,
                          decoration: TextDecoration.underline),
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
