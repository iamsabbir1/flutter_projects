import 'package:bma/Paint/my_custom_paint.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.singUp, required this.login});

  final void Function() singUp;
  final void Function() login;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomPaint(
          painter: MyCustomPainter(),
          child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment(-0.6, 0),
                    child: Text(
                      'Welcome to home page',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        backgroundColor: Colors.red.shade900,
                      ),
                      onPressed: singUp,
                      child: const Text(
                        'SignUp',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade900,
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                          )),
                      onPressed: login,
                      child: const Text(
                        'SignIn',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),

    );
  }
}
