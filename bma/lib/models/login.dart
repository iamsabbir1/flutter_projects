import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key,required this.signup,required this.dashboard});

  final void Function() dashboard;
  final void Function() signup;

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login>
{

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              
              hintText: 'Enter your email',
              prefixIcon: const Icon(Icons.email),
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your password',
              prefixIcon: const Icon(Icons.lock),
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
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
    );
  }
}