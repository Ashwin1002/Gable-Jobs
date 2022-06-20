import 'package:flutter/material.dart';

class RecentJobs extends StatelessWidget {
  const RecentJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Recent Jobs',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 2),
            )
          ]),
          child: Card(
            elevation: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 35,
                        padding: const EdgeInsets.only(
                            top: 8, left: 15, right: 15, bottom: 8),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                          ),
                          borderRadius: BorderRadius.zero,
                        ),
                        child: const Text(
                          'All',
                          style: TextStyle(
                              fontSize: 14, color: Colors.white),
                          textAlign: TextAlign.center,
                        )),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 6, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.zero,
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          'New',
                          style: TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 6, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.zero,
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          'Featured',
                          style: TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 6, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.zero,
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          'Recent',
                          style: TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            top: 6, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.zero,
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          'Full Time',
                          style: TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 6, left: 15, right: 15, bottom: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.zero,
                            border: Border.all(color: Colors.black)),
                        child: const Text(
                          'Part Time',
                          style: TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/udiza.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'UI/UX Designer',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Winbrans.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 35,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Full Time',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 60,
                  width: 30,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/Infiniza.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Android Developer',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Infiniza.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 35,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Part Time',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 60,
                  width: 30,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/Glovibo.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Senior Manager',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Glovibo.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Intern',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/Bizotic.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Product Designer',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Bizotic.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Part Time',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/Hotelzo.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Digital Marketer',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Hotelzo.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Intern',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/Gozuto.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sales Manager',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Gozuto.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Part Time',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/udiza.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Web Developer',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Udiza.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Full Time',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey.withOpacity(0.5), width: 1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.only(
                      top: 8, left: 15, right: 15, bottom: 8),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logos/quota.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'SEO',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Oqota.com',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                          size: 17,
                          color: Colors.green,
                        ),
                        Text(
                          '\$20k - \$25k',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: const Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Location 210-27 Quadra,\nMarket Street, Victoria \nCanada',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      width: 80,
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Apply',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 1)],
                        ),
                      ),
                      child: TextButton(
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
                                const EdgeInsets.all(5))),
                        child: Text(
                          'Part Time',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 14,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(56, 167, 69, 1), Color.fromRGBO(76, 206, 91, 63)],
                  ),
                  shape: BoxShape.circle),
              child: const Text(
                '1',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle),
              child: const Text(
                '2',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle),
              child: const Text(
                '3',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            )
          ],
        ),
      ],
    );
  }
}
