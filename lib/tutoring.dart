import 'package:flutter/material.dart';
class Tutoring extends StatefulWidget {
  const Tutoring({Key? key}) : super(key: key);

  @override
  State<Tutoring> createState() => _TutoringState();
}

class _TutoringState extends State<Tutoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                          "assets/images/img.png",
                          width: double.infinity,
                          height: 320,
                          fit: BoxFit.cover),
                      Positioned(
                        bottom: 35,
                        child: Container(
                          width: 300,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Tutoring',
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        child: Container(
                          width: 300,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'Find tutoring from the best providers',
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
            )
        )
    );
  }
}
