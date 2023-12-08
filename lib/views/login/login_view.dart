import '../register/register_view.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import '../../utils/input.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19, top: 21),
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
              Padding(
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
              Padding(
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
              Align(
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
                  child: Text(
                    AppText.logIn,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.buttonColor),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  )
                ),
              ),
              Padding(
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
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButtons(image: 'assets/images/google.png'),
                    SizedBox(width: 20),
                    MyButtons(image: 'assets/images/facebook.png'),
                    SizedBox(width: 20),
                    MyButtons(image: 'assets/images/twitter.png'),
                    SizedBox(width: 20),
                    MyButtons(image: 'assets/images/linkedin.png'),
                  ],
                ),
              )
            ],
          )
        ),
    );
  }
}

class MyButtons extends StatelessWidget {
  final image;
  
  const MyButtons({
    Key? key,
    required this.image
  }) : super(key : key);
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Image.asset(image),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        elevation: 4, // Set the elevation for the button
        shadowColor: Colors.black, // Set the color of the box shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), // Set the button border radius
        ),
        // backgroundColor: MaterialStateProperty.all(Colors.white),
        // minimumSize: MaterialStateProperty.all(Size(50, 50)),
        // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //   RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(15.0),
        //   ),
        // ),
        // shadowColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.25)),
        // elevation: MaterialStateProperty.all<double>(0.0),
        // overlayColor: MaterialStateProperty.all<Color>(Colors.transparent)
      ),
    );
  }
}