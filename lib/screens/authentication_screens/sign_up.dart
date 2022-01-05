import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexah/config/colors.dart';
import 'package:nexah/screens/authentication_screens/login.dart';
import 'package:nexah/widgets/forgot_password.dart';
import 'package:nexah/widgets/form_field_widget.dart';
import 'package:nexah/widgets/rounded_button.dart';
import 'package:nexah/widgets/title_widget.dart';

class SignUpScreen extends StatelessWidget {
  static const String iD = '/sign_up';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Color(0xFFBDBDBD),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title:const TitleWidget(text: 'Sign Up',),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.iD);
            },
            child: Text(
              'Login',
              style: GoogleFonts.inter(
                color: primaryColor,
                fontSize: 16.0,
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 24.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const FormFieldWidget(hintText: 'Name'),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const FormFieldWidget(hintText: 'Email'),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const FormFieldWidget(hintText: 'Password'),
                          const SizedBox(
                            height: 32.0,
                          ),
                          CheckboxListTile(
                            value: false,
                            onChanged: (bool? value) {},
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text(
                              'I would like to receive your newsletter and other promotional information.',
                              style: GoogleFonts.inter(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                        ],
                      ),
                    ),
                    Column(

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RoundedButton(
                          text: 'Sign Up',
                          onPressed: () {},
                        ),
                        ForgotPassword(
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
