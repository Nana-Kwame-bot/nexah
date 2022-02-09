import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlCard extends StatelessWidget {
  final String assetName;
  final ValueChanged<bool> onChanged;
  final bool value;
  final String text;

  const ControlCard({
    Key? key,
    required this.assetName,
    required this.onChanged,
    required this.value,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: value == true ? null : const Color(0xFFF4F6F5),
          borderRadius: BorderRadius.circular(18.0),
          gradient: value == true
              ? LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    const Color(0xFF5DB075).withOpacity(0.9),
                    const Color(0xFF42C066).withOpacity(0.9),
                    const Color(0xFF24D056).withOpacity(0.9),
                  ],
                )
              : null,
        ),
        duration: const Duration(seconds: 1),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: AnimatedSwitcher(
                        duration: const Duration(seconds: 1),
                        reverseDuration: const Duration(seconds: 1),
                        child: SvgPicture.asset(
                          assetName,
                          key: ValueKey(value),
                          color: value == true ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    Switch(
                      value: value,
                      onChanged: onChanged,
                      activeTrackColor: const Color(0xFF2F9233),
                      inactiveTrackColor: Colors.white,
                      thumbColor: MaterialStateProperty.resolveWith(getColor),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    child: Text(
                      text,
                      key: ValueKey(value),
                      style: value == true
                          ? GoogleFonts.inter(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            )
                          : GoogleFonts.inter(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  bottom: 16.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    child: Text(
                      value == true ? 'On' : 'Off',
                      key: ValueKey(value),
                      style: value == true
                          ? GoogleFonts.inter(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            )
                          : GoogleFonts.inter(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return const Color(0xFFF31616);
  }
}
