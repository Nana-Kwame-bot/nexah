import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormFieldWidget extends StatelessWidget {
  final String hintText;

  const FormFieldWidget({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: const Color(0xFFF6F6F6),
        filled: true,
        suffixIcon: hintText == 'Password'
            ? SizedBox(
                height: 16.0,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Show',
                    style: GoogleFonts.inter(
                      fontSize: 16.0,
                      color: const Color(0xFF5DB075),
                    ),
                  ),
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: hintText,
      ),
    );
  }
}
