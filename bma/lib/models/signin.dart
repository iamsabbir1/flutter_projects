import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn(
      {super.key,
      required this.signup,
      required this.dashboard,
      required this.backhome});

  final void Function() dashboard;
  final void Function() signup;
  final void Function() backhome;

  @override
  State<SignIn> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomTextField(
                  controller: _emailController,
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _passwordController,
                hintText: 'Enter your password',
                labelText: 'Password',
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: widget.dashboard,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 150,
                        vertical: 17,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: widget.signup,
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.backhome,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.icon,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
