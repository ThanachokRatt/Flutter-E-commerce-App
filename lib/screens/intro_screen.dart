import 'package:ecommerceapp_starter/screens/home_screen.dart';
import 'package:ecommerceapp_starter/utils/colors.dart';
import 'package:ecommerceapp_starter/utils/utils.dart';
import 'package:ecommerceapp_starter/widgets/image_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          //tmage transition
          Positioned(
            top: 100,
            left: -150,
            child: Row(
              children: const [
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2)
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: const Text(
              "SCHWEPPE",
              textAlign: TextAlign.center,
              style: kTitleStyle,
            ),
          ),
          //information screen
          Positioned(
            bottom: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.white60,
                      Colors.white,
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Appearance \n Shows Your Quality",
                      style: kNormalStyle.copyWith(fontSize: 30, height: 1.3),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Change The Quality Of Your \n Appearance with SCHWEPPE!",
                      style: kNormalStyle.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildIndicators(),
                    )
                  ],
                )),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: kBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
              )),
              onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
              child: const Text("Sing Up with Email",style: TextStyle(color: Colors.white),)
            ),
            ),
            ),
        ],
      ),
    );
  }
}
