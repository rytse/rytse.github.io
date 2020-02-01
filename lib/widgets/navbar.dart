import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/**
 * Desktop/laptop sized screen navbar for navigating
 * to different sections of the page
 */
class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //Text('Ryan\nTse',
            Text('RYAN\nTSE',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              _NavbarItem('About'),
              SizedBox(width: 60),
              _NavbarItem('Work Experience'),
              SizedBox(width: 60),
              _NavbarItem('blair3sat'),
              SizedBox(width: 60),
              _NavbarItem('Blair Oracle'),
              SizedBox(width: 60),
              _NavbarItem('Hackathons'),
            ]),
          ]),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  final String title;
  const _NavbarItem(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 18)));
  }
}
