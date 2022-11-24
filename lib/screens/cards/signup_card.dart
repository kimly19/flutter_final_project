// import 'package:email_validator/email_validator.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_project_2/consts/color_consts.dart';
// import 'package:flutter_project_2/screens/views/login_screen.dart';
import 'package:flutter_project_2/widgets/textfield_widget.dart';
import 'package:get/get.dart';
// import 'package:toggle_switch/toggle_switch.dart';

class SignupCard extends StatefulWidget {
  final VoidCallback onClickedSignIn;

  const SignupCard({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  State<SignupCard> createState() => _SignupCardState();
}

class _SignupCardState extends State<SignupCard> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    @override
    void dispose() {
      email.dispose();
      password.dispose();

      super.dispose();
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).focusedChild?.unfocus();
      },
      child: Container(
        width: width,
        height: height * 0.65,
        padding: EdgeInsets.only(
          top: height * 0.03,
        ),
        decoration: BoxDecoration(
          color: ColorConsts.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(width * 0.1),
            topRight: Radius.circular(width * 0.1),
          ),
        ),
        child: Column(
          children: [
            // AnimatedToggleButton(
            //   values: const ['Sign In', 'Sign Up'],
            //   onToggleCallback: (value) {
            //     setState(() {
            //       _toggleValue = value;
            //     });
            //   },
            // ),
            // ToggleSwitch(
            //   minWidth: width * 0.65,
            //   minHeight: width * 0.2,
            //   initialLabelIndex: 1,
            //   cornerRadius: width * 0.1,
            //   activeFgColor: ColorConsts.dark_brown,
            //   inactiveBgColor: ColorConsts.skin_color,
            //   inactiveFgColor: ColorConsts.white,
            //   totalSwitches: 2,
            //   labels: const ['Sign In', 'Sign Up'],
            //   activeBgColor: const [ColorConsts.dark_brown],
            //   onToggle: (index) {
            //     index == 1
            //         ? Navigator.of(context).pop()
            //         : Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => SignupCard(),
            //             ),
            //           );
            //   },
            // ),
            Container(
              padding: EdgeInsets.all(width * 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.1),
                color: ColorConsts.dark_brown,
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: ColorConsts.skin_color,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.zero,
                    child: const Text(
                      'Getting Started',
                      style: TextStyle(
                        color: ColorConsts.dark_brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    child: Text(
                      'Create an account to continue',
                      style: TextStyle(
                        color: ColorConsts.dark_brown.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            input_form(),
            SizedBox(
              height: height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  ColorConsts.dark_brown,
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(
                    width * 0.8,
                    height * 0.05,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      width * 0.07,
                    ),
                  ),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: ColorConsts.skin_color,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: ColorConsts.dark_brown,
                  fontSize: 13.0,
                ),
                text: 'Already have account?',
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = widget.onClickedSignIn,
                    text: 'Sign In',
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      color: ColorConsts.dark_brown,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future signUp() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  Widget input_form() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width * 0.8,
      child: Form(
        child: Column(
          children: [
            TextFieldWidget(
              text: 'Enter email',
              icon: Icons.email_outlined,
              isPasswordType: false,
              controller: email,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            TextFieldWidget(
              text: 'Enter password',
              icon: Icons.password_outlined,
              isPasswordType: true,
              controller: password,
            ),
          ],
        ),
      ),
    );
  }
}
