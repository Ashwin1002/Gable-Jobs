import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                  height: 300,
                  width: 200,
                  child: Image(
                      image: AssetImage(
                          'assets/images/blackguy.png'))),
              Column(
                children: const [
                  SizedBox(
                      height: 160,
                      width: 130,
                      child: Image(
                          image: AssetImage(
                              'assets/images/friends.png'))),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 120,
                      width: 130,
                      child: Image(
                          image: AssetImage(
                              'assets/images/collegue.png')))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Why We are Most Popular',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 21, right: 22),
            child: const Text(
              'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Quis ipsum suspendisse ultrices gravida',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 195,
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15))),
                        child: Image(
                          image: const AssetImage(
                              'assets/logos/cv.png'),
                          color: Colors.lightGreen.shade800,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Trusted & \n'
                          'Quality Job',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 195,
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15))),
                        child: Image(
                          image: const AssetImage(
                              'assets/logos/company.png'),
                          color: Colors.lightGreen.shade800,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Top Companies',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 195,
                margin: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15))),
                        child: Image(
                          image: const AssetImage(
                              'assets/logos/nocharge.png'),
                          color: Colors.lightGreen.shade800,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'No Extra \n'
                          'Charge',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 195,
                margin: const EdgeInsets.only(right: 12),
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(15))),
                        child: Image(
                          image: const AssetImage(
                              'assets/logos/threepeople.png'),
                          color: Colors.lightGreen.shade800,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'International \nJob',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
