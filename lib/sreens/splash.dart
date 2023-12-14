// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:school_project/components/button.dart';
import 'package:school_project/components/text.dart';
import 'package:school_project/constant/colors.dart';
import 'package:school_project/sreens/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: primary,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              textBold(
                text: 'Welcome'.toUpperCase(),
                size: 35,
                textColor: blanc,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: blanc),
                child: textBold(
                  text: 'to',
                  size: 35,
                  textColor: primary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              textBold(
                text: 'learning'.toUpperCase(),
                size: 40,
                textColor: blanc,
              ),
              const SizedBox(
                height: 90,
              ),
              buttonCustom(
                tap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    ),
                  );
                },
                text: ' Continuer'.toUpperCase(),
                textColor: primary,
                color: blanc,
                btncolor: primary,
                //iconColor: blanc
              ),
            ],
          ),
        ),
      ),
    );
  }
}
