import 'package:flutter/material.dart';

class LastSeenWidget extends StatelessWidget {
  const LastSeenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(20, 76, 237, 1.0),
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(15),
                  height: 100,
                  width: 70),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 76, 237, 1.0)),
                  margin: const EdgeInsets.all(15),
                  height: 100,
                  width: 70),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 76, 237, 1.0)),
                  margin: const EdgeInsets.all(15),
                  height: 100,
                  width: 70),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 76, 237, 1.0)),
                  margin: const EdgeInsets.all(15),
                  height: 100,
                  width: 70),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 76, 237, 1.0)),
                  margin: const EdgeInsets.all(15),
                  height: 100,
                  width: 70),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(20, 76, 237, 1.0)),
                  margin: const EdgeInsets.all(15),
                  height: 100,
                  width: 70)
            ]));
  }
}
