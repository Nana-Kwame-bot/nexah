import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rooms extends StatelessWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Living room(6)',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Washroom(3)',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Kitchen(8)',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Bedroom',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
