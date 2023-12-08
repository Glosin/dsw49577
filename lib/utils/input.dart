import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  final String labelText;
  final String iconPath;
  final bool isObscure;

  const AppInput({
      Key? key,
      required this.labelText,
      required this.iconPath,
      required this.isObscure
  }) : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.widget.isObscure ? !isVisible : false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondaryColor,
            width: 2
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.secondaryColor,
            width: 2
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        labelText: this.widget.labelText,
        labelStyle: TextStyle(
          color: Colors.black.withOpacity(0.3),
          fontWeight: FontWeight.w400,
          fontSize: 15,
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            )
          ]
        ),
        prefixIcon: Image.asset(this.widget.iconPath),
        suffixIcon: widget.isObscure ? IconButton(
            onPressed: () => setState(() {
              isVisible = !isVisible;
            }), icon: Image.asset('assets/images/eye.png')) : null,
      ),
    );
  }
}
