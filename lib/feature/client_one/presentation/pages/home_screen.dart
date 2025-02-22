import 'package:flutter/material.dart';
import 'package:idea/core/resources/style_manager.dart';

import '../../../../core/resources/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.asset(
            'images/image_1.jpg',
          ),
          Image.asset("assets/images/flower1.png"),
          SizedBox(
                height: 150,
              ),
              Text(
                'حبي  واعتزاز الي زوجتي الحبية وروح قلبي وحياتي كلها',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style:
                    getSemiBoldStyle(color: ColorManager.white, fontSize: 45),
              ),
              Text(
                'حبي  واعتزاز الي زوجتي الحبية وروح قلبي وحياتي كلها',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style:
                    getSemiBoldStyle(color: ColorManager.white, fontSize: 45),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'زوجك المخلص',
                style:
                    getSemiBoldStyle(color: ColorManager.white, fontSize: 20),
              ),
              Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Image.asset("assets/images/flower1.png"))
            ],
          ),
    );
  }
}
