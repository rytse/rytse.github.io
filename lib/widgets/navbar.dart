import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  // const Navbar({Key key}) => super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // SizedBox(
              // 	height: 80,
              // 	width: 150,
              // 	child: Image.asset('assets/pfp.jpg')
              // ),	// SizedBox

              Text(
                'Ryan\nTse',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),

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
              ]), // Row
            ] // children
            ) // Row
        ); // Container
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
    return Text(title, style: TextStyle(fontSize: 18));
  }
}
