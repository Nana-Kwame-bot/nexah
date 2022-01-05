import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        enableFeedback: true,
        minimumSize: const Size(double.infinity, 48.0),
        elevation: 0.0,
        primary: const Color(0xFF5DB075),
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
