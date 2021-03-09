
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  
  
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextInputType keyboardtype;
  final bool obscureText;
  final String Function(String) validator;
  final TextEditingController controller;
  

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.keyboardtype,
    this.obscureText,
    this.validator,
    this.controller,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return TextFieldContainer(
      child: TextFormField(
        keyboardType:keyboardtype ,
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

