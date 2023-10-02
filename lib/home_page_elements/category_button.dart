import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton(this.catname, {super.key});
  final String catname;
  @override
  Widget build(context) {
    return Row(
      children: [
        const SizedBox(width: 5,),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor:  Colors.white10,
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              catname,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
            )),
      ],
    );
  }
}
