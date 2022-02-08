import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexah/appliance_control/appliance_control.dart';
import 'package:nexah/routes/routes.dart';
import 'package:nexah/screens/authentication_screens/welcome_page.dart';

class NexahApp extends StatelessWidget {
  const NexahApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return ApplianceControlBloc();
          },
        ),
      ],
      child: MaterialApp(
        title: 'Nexah',
        onGenerateRoute: AppRouter().onGenerateRoute,
        initialRoute: WelcomePage.iD,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
      ),
    );
  }
}
