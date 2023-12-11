import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import '../../utils/input.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 62),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 21, left: 19),
                  child: Text(
                    AppText.signIn,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      // fontFamily:
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 46, left: 21, right: 19),
                child: SizedBox(
                  height: 50,
                  child: AppInput(
                      labelText: AppText.inputUsername,
                      iconPath: 'assets/images/person.png',
                      isObscure: false
                  )
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 21, right: 19),
                child: SizedBox(
                  height: 50,
                  child: AppInput(
                      labelText: AppText.inputPassword,
                      iconPath: 'assets/images/lock.png',
                      isObscure: true
                  )
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 40, right: 19),
                  child: Text(
                    AppText.forgotPassword,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 19, right: 19),
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.buttonColor),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    AppText.logIn,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                    ),
                  )
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 75),
                child: Text(
                  AppText.otherMethods,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.noAccount,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 15
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        AppText.signUp,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 15
                        ),
                      ),
                    ],
                  )
                ),
            ],
          )
        ),
    );
  }
}