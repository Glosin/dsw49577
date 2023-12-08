import '../register/register_view.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 62),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19, top: 21),
                  child: Text(
                    AppText.SignIn,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      // fontFamily:
                    ),
                  ),
                ),
              )
            ],
          )
        ),
    );
  }
}