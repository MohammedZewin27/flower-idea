import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idea/core/resources/color_manager.dart';
import 'package:idea/feature/client_one/presentation/widgets/my_box.dart';

import '../../../../core/widgets/custom_elevated_button.dart';

class LovePage extends StatelessWidget {
  const LovePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // لون الخلفية
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/image_1.jpg')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const SizedBox(height: 10),
                  Text(
                    'إنتي أحلى حاجة حصلتلي في حياتي، ودايماً بقول إن ربنا بيحبني عشان بعتك ليا.',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: getSemiBoldStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'بحبك',
                    style: getSemiBoldStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  CustomElevatedButton(
                    title: 'افتح العلبة',
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => MyBox(),
                          ));
                    },
                    buttonColor: ColorManager.orange,
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Image.asset("assets/images/flower1.png",
                        width: 300, height: 300), // حجم مناسب
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  // الدالة المسؤولة عن تنسيق النصوص
  TextStyle getSemiBoldStyle({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
    );
  }
}
