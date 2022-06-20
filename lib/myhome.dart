import 'package:customwidgetdemo/mywidgets.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
TextEditingController mobilenumbercontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(child: Column(
            children: [
              MyTextField(mycontroller: mobilenumbercontroller, mykeyboard: TextInputType.number, hidedata: false, hint: "Phone Number"),
              MyTextField(hint: "Password", mycontroller: passwordcontroller, mykeyboard: TextInputType.text, hidedata: true),
              
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (() {
                if(mobilenumbercontroller.text.length <10)
               {  Fluttertoast.showToast(msg: "Please Enter Valid Mobile Number");
               return;


                }
                 if(passwordcontroller.text.length <6)
               {  Fluttertoast.showToast(msg: "Please Enter Password Min 6 Length");
               return;

                }


                

              
                
              }), child: Text("Press ME")),
              SizedBox(height: 50,),

   
            ],
          )),
        ),
      ),
    );
  }
}
