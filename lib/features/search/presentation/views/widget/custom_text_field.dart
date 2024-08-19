import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: border(),
        focusedBorder: border(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
              opacity: 0.8, child: Icon(FontAwesomeIcons.magnifyingGlass)),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
