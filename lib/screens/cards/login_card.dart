import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/consts/asset_const.dart';
import 'package:flutter_project_2/consts/color_consts.dart';
// import 'package:flutter_project_2/screens/views/signup_screen.dart';
import 'package:flutter_project_2/widgets/textfield_widget.dart';
// import 'package:flutter_project_2/widgets/animated_toggle_button.dart';
// import 'package:toggle_switch/toggle_switch.dart';

class LoginCard extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginCard({Key? key, required this.onClickedSignUp}) : super(key: key);

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    @override
    void dispose() {
      email.dispose();
      password.dispose();

      super.dispose();
    }

    return Container(
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
          // ToggleSwitch(
          //   minWidth: width * 0.3,
          //   minHeight: width * 0.15,
          //   initialLabelIndex: 1,
          //   cornerRadius: width * 0.1,
          //   activeFgColor: ColorConsts.dark_brown,
          //   inactiveBgColor: ColorConsts.skin_color,
          //   inactiveFgColor: ColorConsts.white,
          //   totalSwitches: 2,
          //   labels: const ['Sign In', 'Sign Up'],
          //   fontSize: 18.0,
          //   activeBgColor: const [ColorConsts.dark_brown],
          //   onToggle: (index) {
          //     index == 1
          //         ? Navigator.of(context).pop()
          //         : Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => const SignupCard(),
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
              'Sign In',
              style: TextStyle(
                color: ColorConsts.skin_color,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
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
                    'Sign In account to continue',
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
              'Sign In',
              style: TextStyle(
                color: ColorConsts.skin_color,
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: height * 0.02,),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: ColorConsts.dark_brown,
                fontSize: 13.0,
              ),
              text: 'Not yet have an account?',
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = widget.onClickedSignUp,
                  text: 'Sign Up',
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
          SizedBox(height: height * 0.02,),
          _iconSignIn(),
        ],
      ),
    );
  }

  Widget input_form() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

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
              icon: Icons.lock_outline,
              isPasswordType: true,
              controller: password,
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconSignIn() {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Material(
              shape: const CircleBorder(),
              child: SizedBox(
                width: width * 0.1,
                height: width * 0.1,
                child: Ink.image(
                  image: const AssetImage(
                    AssetConst.FACEBOOK_ICON,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Material(
              shape: const CircleBorder(),
              child: SizedBox(
                width: width * 0.1,
                height: width * 0.1,
                child: Ink.image(
                  image: const AssetImage(
                    AssetConst.GOOGLE_ICON,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Material(
              shape: const CircleBorder(),
              child: SizedBox(
                width: width * 0.1,
                height: width * 0.1,
                child: Ink.image(
                  image: const AssetImage(
                    AssetConst.PHONE_ICON,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
