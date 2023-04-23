import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'changePassl_screen.dart';

class Otb extends StatelessWidget {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();
  FocusNode _focusNode4 = FocusNode();
  FocusNode _focusNode5 = FocusNode();
  final _numberOnlyFormatter =
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
  final _emailFormatter = FilteringTextInputFormatter.allow(RegExp(
      r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])'));
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();
  final _controller5 = TextEditingController();
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
                  'assets/images/3.jpg',
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                'We Will send you a one time Code on',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.blueGrey),
              )),
              Center(
                  child: Text(
                ' this  E-mail ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.blueGrey),
              )),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 40,
                    height: 70,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '   ^';
                        }
                      },
                      controller: _controller5,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        _numberOnlyFormatter
                      ],
                      focusNode: _focusNode5,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _focusNode4.requestFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40,
                    height: 70,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '   ^';
                        }
                      },
                      controller: _controller4,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        _numberOnlyFormatter
                      ],
                      focusNode: _focusNode4,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _focusNode3.requestFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40,
                    height: 70,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '   ^';
                        }
                      },
                      controller: _controller3,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        _numberOnlyFormatter
                      ],
                      focusNode: _focusNode3,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _focusNode2.requestFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40,
                    height: 70,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '   ^';
                        }
                      },
                      controller: _controller2,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        _numberOnlyFormatter
                      ],
                      focusNode: _focusNode2,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          _focusNode1.requestFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40,
                    height: 70,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return '   ^';
                        }
                      },
                      controller: _controller1,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        _numberOnlyFormatter
                      ],
                      focusNode: _focusNode1,
                      onFieldSubmitted: (value) {
                        //_focusNode4.requestFocus();
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    if (formField.currentState!.validate()) {
                      print('success');
                      _controller1.clear();
                      _controller2.clear();
                      _controller3.clear();
                      _controller4.clear();
                      _controller5.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChangePass()),
                      );
                    }
                  },
                  child: Center(
                      child: Text(
                    'Verify',
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
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text("Didn't receive the code ? "),
                  Container(
                    width: 90,
                    height: 20,
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Resend',
                        style: TextStyle(
                            color: Colors.cyan,
                            decoration: TextDecoration.underline),
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
