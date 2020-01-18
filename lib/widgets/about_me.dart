import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class AboutMe extends StatelessWidget {
	@override
	Widget build (BuildContext context) {
		return Container(
    	  decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/bigpfp.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
			mainAxisAlignment: MainAxisAlignment.center,
			crossAxisAlignment: CrossAxisAlignment.center,
			mainAxisSize: MainAxisSize.max,
			textBaseline: TextBaseline.alphabetic,
			children: <Widget>[
				Container(
					alignment: Alignment.center,
					child: SizedBox(
					height: 300,
					width: 300,
					child: CircularProfileAvatar(
						'',
						child: Image(image: ExactAssetImage('assets/face.jpeg')),
						backgroundColor: Colors.transparent,
						borderWidth: 5,
						initialsText: Text("RT", style: TextStyle(fontSize: 40, color: Colors.white),),
						borderColor: Colors.green,
						elevation: 10.0,
						radius: 300,
					),	// CircularProfileAvatar
				),	// SizedBox for pic of face

				),

				SizedBox(width: 120),

                ClipRRect(
                    borderRadius: BorderRadius.circular(20),

					child: SizedBox(
						height: 400,
						width: 500,

						child: Container(
							padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
							alignment: Alignment.center,
							color: Colors.purple,

							child: Column(
								children: <Widget>[
									Text(
								        'About Me:',
								        style: TextStyle(fontSize: 42),
						    		),

						    		Divider(
						    			height: 50,
						    			thickness: 3,
						    			color: Colors.black
						    		),

						    		Container(
						    			color: Colors.green,
						    			padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
						    			child: Text(
							    			'I’m a freshman at the University of Maryland, College Park\nstudying Electrical Engineering and Applied Math. I like working\non control systems and modeling things. I’m also an Eagle Scout\nfrom Troop 1449. Check out my GitHub and my résumé.',
							    			style: TextStyle(fontSize: 20),
						    			),
					    			),
								]
							),
						),
					),
                )

			]	// children of the row
		)
      );
	}
}
