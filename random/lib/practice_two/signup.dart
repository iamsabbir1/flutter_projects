import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:random/practice_two/user_authentication.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _signup() async {
    try {
      setState(() {
        _isLoading = true;
      });
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const UserAuthentication(),
        ),
      );
      // Navigate to the main screen or show a success message
    } catch (e) {
      // Handle errors or show an error message
    }
  }

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              label: Text(
                'Email',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              label: Text(
                'Password',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            style: const TextStyle(color: Colors.white),
            obscureText: true,
          ),
          _isLoading
              ? Container(
                  width: 50,
                  height: 30,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(10),
                      right: Radius.circular(10),
                    ),
                  ),
                  child: const CircularProgressIndicator(),
                )
              : ElevatedButton(
                  onPressed: _signup,
                  child: const Text('Sign Up'),
                ),
          const SizedBox(height: 20),
          const Text(
            'Already have an account?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const UserAuthentication(),
                ),
              );
            },
            child: const Text('Log in'),
          ),
        ],
      ),
    );
  }
}
