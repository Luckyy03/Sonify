import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sonify/common/widgets/button/basic_app_button.dart';
import 'package:sonify/core/configs/assets/app_images.dart';
import 'package:sonify/core/configs/assets/app_vectors.dart';
import 'package:sonify/core/configs/theme/app_colors.dart';
import 'package:sonify/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AppImages.introBG,
                )
              )
            ),
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment(0,-0.6),
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

                  const Spacer(),
                  const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                  const SizedBox(height: 21,),
                   const Text(
                     'Welcome to your ultimate soundtrack \n'
                         '      Dive into personalized playlists'
                         ' \n    discover new favorites tailored,'
                         ' \njust for you.let the rhythm guide you. \n',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20,),
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const ChooseModePage()
                        )
                     );
                    },
                    title: 'Get Started'
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}