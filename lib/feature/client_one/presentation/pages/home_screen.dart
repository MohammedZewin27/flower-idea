import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idea/core/resources/color_manager.dart';
import 'package:idea/feature/client_one/presentation/widgets/my_box.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/widgets/custom_elevated_button.dart';

class LovePage extends StatelessWidget {
  const LovePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://www.snapchat.com/add/fekra.2');

    Future<void> _launchURL() async {
      if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch $_url';
      }
    }
    return Scaffold(
      backgroundColor: Colors.black, // لون الخلفية
      body: SafeArea(
          child: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/tseses.jpg')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 50),
            child: Column(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 55,),
                Text(
                 'فكره الجود للافراح والمناسبات  تهنئ الشعب السعودية بيوم التأسيس',
                  textAlign: TextAlign.center,
                  style: getSemiBoldStyle(
                      color: ColorManager.white, fontSize: 40),
                ),
                CustomElevatedButton(
                    buttonColor: ColorManager.orange,
                    title: 'فكرة الجود',
                    onPressed: _launchURL),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'حمدان مقبل المطيري',
                      style: getSemiBoldStyle(
                          color: ColorManager.white, fontSize: 30),
                    ),
                    Expanded(
                      child: Image.asset("assets/images/hemdan.png",
                          width: 250, height: 250),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  // الدالة المسؤولة عن تنسيق النصوص
  TextStyle getSemiBoldStyle({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
    );
  }
}
