import 'package:flutter/material.dart';
import 'package:tech_taste/app/constants/color_theme.dart';
import '../constants/responsive.dart';

class SplashScreen extends StatelessWidget {
  final ResponsiveUltils responsiveUltils = ResponsiveUltils();

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.fundo_tech,
      body: Stack(
        children: [
          Image.asset('assets/banners/Banner.png', width: double.infinity,),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo/Logo home@2x.png'),
                  SizedBox(
                    height: responsiveUltils.getWidthSpacing(context, 15),
                  ),
                  Column(
                    children: [
                      Text(
                        'Um parceiro inovador para sua',
                        style: TextStyle(color: ColorTheme.text_cards),
                      ),
                      Text(
                        'melhor experiência culinária!',
                        style: TextStyle(color: ColorTheme.main_color),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsiveUltils.getWidthSpacing(context, 15),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      child:const Text('Bora!'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
