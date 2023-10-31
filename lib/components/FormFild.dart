import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../MyTheme.dart';

class Custom_Form extends StatelessWidget {
  Icon preIcon;
  String Label;
  Function(String)? onChanged;
  Custom_Form({
    required this.preIcon,
    this.onChanged,
    required this.Label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextFormField(
        // onChanged:  onChanged,
        decoration: InputDecoration(
          prefixIcon: preIcon,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 2, color: MyTheme.primeColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 2, color: MyTheme.primeColor)),
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            hintText: Label,
            hintStyle: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w300)),
      ),
    );
  }
}
