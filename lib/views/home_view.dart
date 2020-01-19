import 'package:flutter/material.dart';

import '../widgets/navbar.dart';
import '../widgets/centered_view.dart';
import '../widgets/about_me.dart';

/**
 * Homepage
 */
class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Navbar(),
                ],
              ),
              SizedBox(height: 60),
              Expanded(
                child: AboutMe(),
              ),
            ]),
      ),
    );
  }
}
