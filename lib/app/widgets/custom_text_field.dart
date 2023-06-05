import 'package:flutter/material.dart';
import 'package:food_ninja/app/components/dimentions.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintTitle,
    this.numberOfLines = 1,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    required this.onChanged,
    required this.validator,
    this.showClearSuffix = false,
    required this.suffixButtonAction,
    this.isEnabled = true,
    this.textInputAction = TextInputAction.next,
  });
  final String hintTitle;
  final TextEditingController controller;
  final bool isPassword;
  int numberOfLines;
  TextInputType textInputType;

  Function onChanged;
  Function validator;
  Function suffixButtonAction;
  bool showClearSuffix;
  bool isEnabled;

  TextInputAction textInputAction;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shoWPassword = widget.isPassword;
  }

  late bool shoWPassword;
  @override
  Widget build(BuildContext context) {
    final borderStyle = OutlineInputBorder(
      borderSide: Divider.createBorderSide(
        context,
        color: Colors.black.withOpacity(.05),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        AppDimentions().borderRadius,
      ),
    );
    return TextFormField(
      enabled: widget.isEnabled,
      controller: widget.controller,
      style: const TextStyle(
        decoration: TextDecoration.none,
        fontFamily: 'BentonSansRegular',
        color: Colors.black,
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.ellipsis,
        fontSize: 15,
      ),
      maxLines: widget.numberOfLines,
      keyboardType: widget.textInputType,
      validator: (value) {
        final res = widget.validator(value);
        if (res == null) {
          return null;
        } else {
          return res.toString();
        }
      },
      textInputAction: widget.textInputAction,
      onChanged: (value) {
        widget.onChanged(value);
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 22,
        ),
        suffixIcon: widget.showClearSuffix
            ? clearSuffixIconButton()
            : widget.isPassword
                ? togglePasswordVisibilityIconButton()
                : const SizedBox.shrink(),
        hintText: widget.hintTitle,
        hintStyle: TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'BentonSansRegular',
          color: Colors.black.withOpacity(.3),
          fontWeight: FontWeight.normal,
          overflow: TextOverflow.ellipsis,
          fontSize: 15,
        ),
        errorStyle: const TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'BentonSansRegular',
          color: Colors.white,
          fontWeight: FontWeight.normal,
          overflow: TextOverflow.ellipsis,
          fontSize: 15,
        ),
        border: borderStyle,
        focusedBorder: borderStyle,
        enabledBorder: borderStyle,
        fillColor: Colors.white,
        filled: true,
      ),
      obscureText: shoWPassword,
      // obscuringCharacter: "*",
    );
  }

  GestureDetector togglePasswordVisibilityIconButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          shoWPassword = !shoWPassword;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Icon(
          shoWPassword ? Icons.visibility : Icons.visibility_off,
          color: Colors.black.withOpacity(.6),
          size: 16,
        ),
      ),
    );
  }

  GestureDetector clearSuffixIconButton() {
    return GestureDetector(
      onTap: () {
        widget.suffixButtonAction();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Icon(
          Icons.clear,
          color: Colors.black.withOpacity(.6),
          size: 16,
        ),
      ),
    );
  }
}
