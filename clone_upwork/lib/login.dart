import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    //final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          FontAwesomeIcons.upwork,
          color: Colors.green,
          size: 50,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(20),
              width: width <= 700
                  ? width * 0.9
                  : width <= 900
                      ? width * 0.5
                      : width <= 1200
                          ? width * 0.4
                          : width * 0.35,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      'Login to Clone Upwork',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                    ),
                    const SizedBox(height: 40),
                    Form(
                      key:
                          _formKey, // Assign the GlobalKey<FormState> to the Form widget
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  _isHover = true;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  _isHover = false;
                                });
                              },
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(FontAwesomeIcons.user),
                                  labelText:
                                      'Username or email', // First field for Email
                                  border: _isHover
                                      ? const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.blue, width: 2.0),
                                        )
                                      : const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  // Add validation logic for email
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  // Add more validation logic as needed
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Continue',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    'or',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ),
                                const Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton.icon(
                                icon: const Icon(FontAwesomeIcons.google),
                                label: Text(
                                  'Continue with google',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[700]!,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton.icon(
                                icon: const Icon(FontAwesomeIcons.apple,
                                    color: Colors.black),
                                label: Text(
                                  'Continue with apple',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.black,
                                      ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(
                              height: 120,
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Don\'t have an Upwork account?',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ),
                                const Expanded(
                                  child: Divider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 17,
                                  horizontal: width * 0.05,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(color: Colors.green),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Sign Up',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: Colors.green,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.all(20),
              child: const Text(
                '© 2015 - 2024 Upwork® Global Inc. • Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
