import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_2/consts/asset_const.dart';
import 'package:flutter_project_2/consts/color_consts.dart';
import 'package:flutter_project_2/screens/cards/signup_card.dart';

class SignupScreen extends StatefulWidget {
  final VoidCallback onClickedSignIn;

  const SignupScreen({Key? key, required this.onClickedSignIn}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.zero,
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.zero,
                height: height,
                color: ColorConsts.skin_color,
                child: Column(
                  children: [
                    Container(
                      width: width,
                      height: height * 0.13,
                      padding: EdgeInsets.only(
                        top: height * 0.07,
                        right: width * 0.03,
                        left: width * 0.03,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: ColorConsts.dark_brown,
                              size: 20.0,
                            ),
                          ),
                          const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: ColorConsts.dark_brown,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.zero,
                      width: width * 0.4,
                      height: width * 0.4,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(AssetConst.IMG_4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.35,
              child: SignupCard(onClickedSignIn: () {},),
            ),
          ],
        ),
      ),
    );
  }
}
