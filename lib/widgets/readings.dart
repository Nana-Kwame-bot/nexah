import 'package:flutter/material.dart';
import 'package:nexah/config/styles.dart';

class Readings extends StatelessWidget {
  const Readings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFAEA3A3),
        ),
        borderRadius: BorderRadius.circular(11.0),
        color: const Color(0xFFDFEFE3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Energy Consumption: 60 W',
            style: detailTextStyle,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            'Air Quality: Good',
            style: detailTextStyle,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            'Temperature 82°F',
            style: detailTextStyle,
          ),
        ],
      ),
    );
  }
}
