import 'package:flutter/material.dart';

class MarckField{
  static Customtxt (TextEditingController controller,String hinttxt,String labltxt,IconData iconData){
    return Expanded(
      child: TextField(
        maxLength: 2,
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: hinttxt,
            label: Text(labltxt),
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(width: 2)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(width: 2,color: Colors.teal)
            )
        ),
      ),
    );
  }
}