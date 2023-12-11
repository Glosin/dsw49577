import 'package:dsw49577/views/login/login_view.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import '../../utils/input.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:10, left: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginView()
                            )
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/arrow.png'),
                          const SizedBox(width: 5),
                          const Text(
                            AppText.back,
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset('assets/images/background.png')
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 21, left: 19),
                  child: Text(
                    AppText.signUp,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      // fontFamily:
                    ),
                  ),
                ),
              ),
              MyRegisterForm(),
              Padding(
                padding: EdgeInsets.only(top: 140),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView())
                    );
                  },
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
                        AppText.signIn,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
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
class MyRegisterForm extends StatefulWidget {
  const MyRegisterForm({super.key});
  @override
  _MyRegisterFormState createState() => _MyRegisterFormState();
}

class _MyRegisterFormState  extends State<MyRegisterForm>{
  final _RegisterformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _fullname = TextEditingController();
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    TextEditingController _repeatPassword = TextEditingController();
    return Form(
      key: _RegisterformKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 46, left: 21, right: 19),
            child: SizedBox(
              height: 90,
              child: AppInput(
                labelText: AppText.inputUsernameRegister,
                iconPath: 'assets/images/person.png',
                isObscure: false,
                controller: _fullname
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21, right: 19),
            child: SizedBox(
              height: 90,
              child: AppInput(
                labelText: AppText.inputEmail,
                iconPath: 'assets/images/email.png',
                isObscure: false,
                controller: _email
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
          Padding(
            padding: EdgeInsets.only(left: 21, right: 19),
            child: SizedBox(
              height: 90,
              child: AppInput(
                labelText: AppText.inputPassword,
                iconPath: 'assets/images/lock.png',
                isObscure: true,
                controller: _repeatPassword
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 19, right: 19),
            child: ElevatedButton(
              onPressed: () {
                if (_RegisterformKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginView()
                        )
                    );
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
                AppText.signUp,
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