import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexah/config/colors.dart';

class ProfileScreen extends StatelessWidget {
  static const String iD = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            "Profile",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 16.0,
            ),
            child: Text(
              "Settings",
              softWrap: false,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                right: 16.0,
              ),
              child: Text(
                "Logout",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.3,
                      color: primaryColor,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.7,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 60.0,
                          ),
                          Text(
                            "Hamida Mahama",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: (constraints.maxHeight * 0.3) - 120,
                  child: const CircleAvatar(
                    radius: 80.0,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
