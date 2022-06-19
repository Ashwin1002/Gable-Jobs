import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfileSlider extends StatefulWidget {
  const ProfileSlider({Key? key}) : super(key: key);

  @override
  State<ProfileSlider> createState() => _ProfileSliderState();
}

class _ProfileSliderState extends State<ProfileSlider> {
  int _currentIndex = 0;

  List<Widget> cardList = [
    const Item1(),
    Item2(),
    Item3(),
    Item4(),
    Item5(),
    const Item6(),
    const Item7(),
    const Item8(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            fit: FlexFit.loose,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 380,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  return Wrap(children: [
                    Container(
                      color: Colors.white,
                      child: card,
                    ),
                  ]);
                });
              }).toList(),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(cardList, (index, url) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.green : Colors.grey,
                  ),
                );
              }))
        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/men1.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Shane Mac',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'SEO Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'View Profile',
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/men2.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Jerry Hudson',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Business Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'View Profile',
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/men3.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Jac Jacson',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Web Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'View Profile',
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/men4.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Tom Potter',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'UI/UX Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'View Profile',
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/men5.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Victor Valdes',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Java Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'View Profile',
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item6 extends StatelessWidget {
  const Item6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/women1.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sherry Blossom',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Graphic Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'View Profile',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item7 extends StatelessWidget {
  const Item7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/men6.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'William Jones',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Python Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'View Profile',
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Item8 extends StatelessWidget {
  const Item8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            height: 330,
            width: 270,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/men7.jpeg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 125,
            width: 255,
            margin: const EdgeInsets.only(top: 250),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(1, 1))
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Brian Hardy',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Share Market Consultant',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'View Profile',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 14,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                          Border.all(color: Colors.grey.shade300, width: 2),
                        ),
                        child: const Image(
                          image: AssetImage('assets/logos/heart.png'),
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}