import 'package:flutter/material.dart';

class AvailableJob extends StatelessWidget {
  const AvailableJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                      child: Image(
                          image: AssetImage(
                              'assets/logos/threepeople.png'),
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          '14',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            'k+',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'Job Available',
                      style: TextStyle(
                          color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                      child: Image(
                          image: AssetImage('assets/logos/cv.png'),
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          '18',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            'k+',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'CV Submitted',
                      style: TextStyle(
                          color: Colors.white, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                      child: Image(
                          image: AssetImage(
                              'assets/logos/company.png'),
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          '9',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            'k+',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'Companies',
                      style: TextStyle(
                          color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                      width: 40,
                      child: Image(
                          image: AssetImage('assets/logos/job.png'),
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          '35',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            'k+',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const Text(
                      'Appointed to Job',
                      style: TextStyle(
                          color: Colors.white, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
