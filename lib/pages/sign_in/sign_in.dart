import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/sign_in/widgets/appbar.dart';
import 'package:ulearning_app/pages/sign_in/widgets/btn_forgot_password.dart';
import 'package:ulearning_app/pages/sign_in/widgets/btn_sign.dart';
import 'package:ulearning_app/pages/sign_in/widgets/text.dart';
import 'package:ulearning_app/pages/sign_in/widgets/textfield.dart';
import 'package:ulearning_app/pages/sign_in/widgets/third_party_login.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(
                    child: reusableText("Or use your email account to login")),
                Container(
                  margin: EdgeInsets.only(top: 66.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      SizedBox(height: 5.h),
                      buildTextField(
                        "Email",
                        "email",
                        "user",
                        "Enter your email address",
                      ),
                      reusableText("Password"),
                      SizedBox(height: 5.h),
                      buildTextField(
                        "Email",
                        "password",
                        "lock",
                        "Enter your password",
                      ),
                      btnForgotPassword(),
                      buildSignBtn("Log in", "login"),
                      buildSignBtn("Log in", "register"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
