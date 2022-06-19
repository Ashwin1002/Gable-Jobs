import 'package:flutter/material.dart';

import '../animatedWidget/animated_widget_horz.dart';
import '../animatedWidget/animated_widget_vert.dart';

class AnimatedPhotos extends StatelessWidget {
  const AnimatedPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1250,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 480, width: 420, child: AnimateCont()),
          const SizedBox(
            height: 20,
          ),
          SizedBox(height: 480, width: 400, child: AnimateCont2()),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Download The Glabe Mobile App',
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            child: const Text(
              'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Image(
                  image: AssetImage('assets/logos/appstore.png'),
                  width: 150,
                  height: 60,
                ),
                Image(
                  image: AssetImage('assets/logos/googleplay.png'),
                  width: 150,
                  height: 60,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
