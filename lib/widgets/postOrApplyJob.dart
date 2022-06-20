import 'package:flutter/material.dart';

class JobPortal extends StatelessWidget {
  const JobPortal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 260,
                    width: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/officetalk.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 145,
                    width: 140,
                    padding: EdgeInsets.zero,
                    margin: const EdgeInsets.only(left: 220),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/womensmile.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(top: 160, left: 105),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                      ),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.5),
                          width: 8),
                      borderRadius: BorderRadius.zero,
                    ),
                    child: const Text(
                      '100% Trusted',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, left: 12),
          margin: const EdgeInsets.only(left: 10, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Trusted & Popular Job Portal',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur.',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.8), fontSize: 15),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero)),
                          side: MaterialStateProperty.all(
                              const BorderSide(
                                color: Colors.green,
                              )),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(12))),
                      child: Row(
                        children: [
                          Text(
                            'Post a Job',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Apply Now',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
