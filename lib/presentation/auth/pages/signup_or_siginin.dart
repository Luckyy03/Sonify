import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sonify/common/helpers/is_dark_mode.dart';
import 'package:sonify/common/widgets/button/basic_app_button.dart';
import 'package:sonify/core/configs/assets/app_images.dart';
import 'package:sonify/core/configs/assets/app_vectors.dart';
import 'package:sonify/core/configs/theme/app_colors.dart';
import 'package:sonify/presentation/auth/pages/signin.dart';
import 'package:sonify/presentation/auth/pages/signup.dart';

import '../../../common/widgets/appbar/app_bar.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            // Background container
            Container(
              alignment: Alignment.bottomRight,
              //margin: EdgeInsets.all(4),
              margin: EdgeInsets.only(top: 350,left: 60),
              width: 550,
              height: 600,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: const AssetImage('assets/grlpic.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Positioned image
            SizedBox(
              height: 0,
            ),
            Align(
              alignment: Alignment(0,-0.8),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.fill, // or BoxFit.contain depending on your need
                  ),
                ),
                width: 250, // Adjust these values according to your needs
                height: 100,
              ),
            ),
            // Text overlay
            Align(
              alignment: Alignment(0.0,-0.4),
              child: Text(
                'Enjoy Listening To Music',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.0,-0.2),
              padding: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 20),
              child: Text(
                "Sonify is a community-driven, non-profitable "
                    "\naudio streaming and media services provider.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BasicAppButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context)=> SignupPage()
                            )
                        );
                      },
                      title: 'Register'
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black26),
                      fixedSize:MaterialStateProperty.all<Size>(Size(130,80)),
                    ),
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context)=> SigninPage()
                            )
                        );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white ,
                        ),
                      )
                  ),
                )
              ],

            )
            ),
      ]
    )
      )
    );
  }
}