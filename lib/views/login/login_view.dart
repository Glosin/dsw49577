import '../register/register_view.dart';
import '../homepage/homepage_view.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import '../../utils/input.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {

    bool underLine = false;
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
              MyForm(),
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: GestureDetector(
                  onTap: () {
                    underLine = true;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterView()
                        )
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.noAccount,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          decoration: (underLine) ? TextDecoration.underline : null,
                          fontSize: 15
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        AppText.signUp,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          decoration: (underLine) ? TextDecoration.underline : null,
                          fontSize: 15
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ],
          )
        ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState  extends State<MyForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    TextEditingController _password = TextEditingController();
    String login = 'dsw49577';
    String haslo = '1234';
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 46, left: 21, right: 19),
            child: SizedBox(
              height: 90,
              child: AppInput(
                labelText: AppText.inputUsername,
                iconPath: 'assets/images/person.png',
                isObscure: false,
                controller: _username
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, right: 19),
            child: SizedBox(
              height: 90,
              child: AppInput(
                labelText: AppText.inputPassword,
                iconPath: 'assets/images/lock.png',
                isObscure: true,
                controller: _password
              )
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 19),
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
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (_username.text == login && _password.text == haslo) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageView()
                        )
                    );
                  } else {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(AppText.validWrongDataTitle),
                            content: Text(AppText.validWrongDataDesc),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(AppText.validWrongDataButton)
                              )
                            ],
                          );
                        }
                    );
                  }
                }
              },
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
                AppText.signIn,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15
                ),
              )
            ),
          ),
        ],
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
    return GestureDetector(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0,
            ),
          ],
          borderRadius: BorderRadius.circular(15)
        ),
        child: Image.asset(image),
      ),
    );
  }
}