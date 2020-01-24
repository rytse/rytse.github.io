import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

/**
 * About Me section with a picture of me and a one-paragraph
 * blurb about myself, and a link to my resume
 */
class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/dollysoddscampground.JPG'),
        ),
      )),
      Container(
        height: 750.0,
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.3),
                  Colors.black,
                ],
                stops: [
                  0.0,
                  1.0
                ])),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          textBaseline: TextBaseline.alphabetic,

          // Profile picture
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 450,
                width: 450,
                child: CircularProfileAvatar(
                  '',
                  child: Image(image: ExactAssetImage('assets/face.jpeg')),
                  backgroundColor: Colors.transparent,
                  borderWidth: 5,
                  initialsText: Text(
                    "RT",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  borderColor: Colors.black,
                  elevation: 7.0,
                  radius: 400,
                ),
              ),
            ),

            SizedBox(width: 120),

            // Blurb
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 500,
                width: 500,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  alignment: Alignment.center,
                  //color: Colors.indigo[400].withOpacity(0.85),
                  //color: Colors.tealAccent[400].withOpacity(0.55),
                  color: Color(0x062726).withOpacity(0.75),
                  child: Column(children: <Widget>[
                    Text(
                      'About Me:',
                      style:
                          //TextStyle(fontSize: 42, color: Colors.blueGrey[50]),
                          TextStyle(
                              fontSize: 42,
                              color: Color(0xecd9f4).withOpacity(0.90)),
                    ),
                    Divider(height: 50, thickness: 3, color: Colors.black),
                    Container(
                      //color: Colors.indigo[300].withOpacity(0.8),
                      //   color: Colors.tealAccent[400].withOpacity(0.0),
                      color: Color(0x102b3f).withOpacity(0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Text(
                        'I’m a freshman at the University of Maryland, College Park\nstudying Electrical Engineering and Applied Math. I like working\non control systems and modeling things. I’m also an Eagle Scout\nfrom Troop 1449. Check out my GitHub and my résumé.',
                        //style: TextStyle(fontSize: 25, color: Colors.white),
                        style: TextStyle(
                            fontSize: 25,
                            //color: Color(0xe2cfea).withOpacity(0.75)),
                            color: Color(0xecd9f4).withOpacity(0.75)),
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ])
    ]);
  }
}
