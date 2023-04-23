import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgetPass2_screen.dart';

class ForgetPass1 extends StatelessWidget {

  final formField= GlobalKey<FormState>();

  final emailController= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(key: formField,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image( image: AssetImage('assets/images/2.jpg',),),
              SizedBox(height: 40,),
              Text('Enter your Email ', style: TextStyle(fontSize: 20, color: Colors.blueGrey),),
              SizedBox(height: 20,),
              Container( width: 300,
                child: TextFormField(  validator:(value){
                  if (value!.isEmpty){return 'Please Enter Email';}
                  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                  if(!emailValid){
                    return 'Enter Valid Email';
                  }


                } ,controller: emailController,  keyboardType: TextInputType.emailAddress,  textAlign: TextAlign.center ,
                  decoration: InputDecoration( contentPadding: EdgeInsets.symmetric(horizontal: 70.0),

                      border: OutlineInputBorder(borderSide: BorderSide(width: 3,  color: Colors.grey),borderRadius: BorderRadius.circular(50.0), )  )
                  , ),
              ),
              SizedBox(height: 20,),



              Image( image: AssetImage('assets/images/Group.png',),),
              SizedBox(height: 50,),
              Container(width: 300,height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    if(formField.currentState!.validate()){
                      print('success');
                      emailController.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPass2()),
                      );


                    }

                  },
                  child: Center(child: Text('Done',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)),
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
