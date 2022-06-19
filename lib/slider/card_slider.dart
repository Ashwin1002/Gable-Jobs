import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardSlider extends StatefulWidget {
  const CardSlider({Key? key}) : super(key: key);

  @override
  State<CardSlider> createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  int _currentIndex = 0;

  List<Widget> cardList = [
    Item1(),
    Item2(),
    Item3(),
    Item4(),
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
          Expanded(
            flex: 4,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 330,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
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
                  return Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width,
                      child: card,
                    );
                });
              }).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(cardList, (index, url){
              return Container(
                width: 10,
                height: 10,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.green : Colors.grey,
                ),
              );
            })
          )
        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(30),
        elevation: 2,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: Image(image: AssetImage('assets/slider/opera.png')),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Infiniza.com',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'North Street, California',
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.4)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 80,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Colors.green,
                    )),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10))),
                child: const Text(
                  'Hiring',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(30),
        elevation: 2,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: Image(image: AssetImage('assets/slider/horse.png')),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Glovibo.com',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Barming Road, UK',
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.4)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 80,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Colors.green,
                    )),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10))),
                child: const Text(
                  'Hiring',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(30),
        elevation: 2,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: Image(image: AssetImage('assets/slider/star.png')),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Bizotic.com',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Washington, NewYork',
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.4)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 80,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Colors.green,
                    )),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10))),
                child: const Text(
                  'Hiring',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(30),
        elevation: 2,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: Image(image: AssetImage('assets/slider/redtriangle.png')),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Winbrans.com',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Quada, Street, Canada',
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.4)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 80,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    side: MaterialStateProperty.all(const BorderSide(
                      color: Colors.green,
                    )),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10))),
                child: const Text(
                  'Hiring',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
