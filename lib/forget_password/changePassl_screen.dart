import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  final passController = TextEditingController();

  final passConfController = TextEditingController();

  bool passToggle = true;

  bool passConfToggle = true;
  final formField = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formField,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'assets/images/4.jpg',
                ),
              ),
              SizedBox(
                height: 50,
              ),
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
                        labelText: 'New Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 70,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Confirm Password';
                      }
                    },
                    controller: passConfController,
                    textAlign: TextAlign.center,
                    obscureText: passConfToggle,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passConfToggle = !passConfToggle;
                            });
                          },
                          child: Icon(passConfToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        labelText: 'Confirm New Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignUp()),
                    // );
                    if (formField.currentState!.validate()) {
                      print('success');

                      passController.clear();
                      passConfController.clear();
                    }
                  },
                  child: Center(
                      child: Text(
                    'Log-in',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  )),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
