import 'package:flutter/material.dart';
import 'package:grintech/constant/dimens.dart';

class TextFieldComponent extends StatefulWidget {
  

  TextFieldComponent({Key? key, required this.label, required this.typeField, required this.controller}) : super(key: key);
  final String label;
  final String typeField;
  final TextEditingController controller;
  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {

  bool _isObscure = true;

  var suffic = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: new BorderRadius.circular(Dimens.Level_1)
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: (widget.typeField == "password") ? _isObscure : false,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: Dimens.Level_1, horizontal: Dimens.Level_2),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          labelText: widget.label,
          labelStyle:TextStyle(color: Colors.white),
          suffixIcon: (widget.typeField == "password") ? IconButton(
            splashColor: Colors.transparent,
            color: Colors.white,
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ) : null,
        ),
      ),
    );
  }
}