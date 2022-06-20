
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
   final TextEditingController mycontroller;
   final TextInputType mykeyboard;
   final bool hidedata;
   final String hint;
  
  const MyTextField({
    Key? key,
    required this.hint,
    required this.mycontroller,
    required this.mykeyboard,
    required this.hidedata,
  }) : super(key: key);

 

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.mycontroller,
      keyboardType: widget.mykeyboard,
      obscureText: widget.hidedata,
      decoration: InputDecoration(
        hintText: widget.hint
      ),
      
    );
  }
}