import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexah/widgets/forgot_password.dart';
import 'package:nexah/widgets/form_field_widget.dart';
import 'package:nexah/widgets/rounded_button.dart';
import 'package:nexah/widgets/title_widget.dart';

import '../bottom_navigation/bottom_navigation.dart';

class LoginScreen extends StatelessWidget {
  static const String iD = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const TitleWidget(text: 'Login',),
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
                        children: const [
                          FormFieldWidget(hintText: 'Email'),
                          SizedBox(
                            height: 16.0,
                          ),
                          FormFieldWidget(hintText: 'Password'),
                          SizedBox(
                            height: 32.0,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RoundedButton(
                          text: 'Login',
                          onPressed: () {
                            Navigator.pushNamed(context, BottomNavigation.iD);
                          },
                        ),
                        ForgotPassword(
                          onPressed: () {

                          },
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


