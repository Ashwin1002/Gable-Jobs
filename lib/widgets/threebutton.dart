import 'package:flutter/material.dart';


class ThreeButton extends StatelessWidget {
  const ThreeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white.withOpacity(0.4),
                              width: 5)),
                      child: const Image(
                          image: AssetImage(
                              'assets/images/register.png'),
                          width: 50)),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Register Your Account',
                    style: TextStyle(
                        color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                Colors.white.withOpacity(0.4),
                                width: 5)),
                        child: const Image(
                          image: const AssetImage(
                              'assets/images/phonecall.png'),
                          width: 50,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Apply for Dream Job',
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white.withOpacity(0.4),
                              width: 5)),
                      child: const Image(
                        image: AssetImage('assets/images/cv.png'),
                        width: 50,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Upload Your Resume',
                    style: TextStyle(
                        color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
