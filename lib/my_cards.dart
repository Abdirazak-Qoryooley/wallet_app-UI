// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class mycard extends StatelessWidget {
  final double balance;
  final int cardnumber;
  final int expirysmonth;
  final int expiryyear;
  final color;
  const mycard(
      {Key? key,
      required this.balance,
      required this.cardnumber,
      required this.expirysmonth,
      required this.expiryyear,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 380,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  // margin: EdgeInsets.all(12),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(50)),
                ),
                const Spacer(),
                Image.asset(
                  'images/master.png',
                  width: 45,
                  height: 45,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 240.0),
                  child: const Text(
                    'Balance',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$' + balance.toString(),
                  style: const TextStyle(
                      fontSize: 30, color: Colors.white, letterSpacing: 3),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(cardnumber.toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.white)),
                )
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Text(
                        'Expires',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff0F79F14)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0),
                      child: Text(
                        expirysmonth.toString() + '-6-' + expiryyear.toString(),
                        style: const TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Cvv',
                          style: TextStyle(
                              fontSize: 18, color: Color(0xff0F79F14)),
                        ),
                        const Text(
                          '785',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
