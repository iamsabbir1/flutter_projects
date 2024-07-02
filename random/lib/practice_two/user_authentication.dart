import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:random/practice_two/user.dart';

class UserAuthentication extends StatefulWidget {
  const UserAuthentication({super.key});

  @override
  State<UserAuthentication> createState() {
    return _UserAuthenticationState();
  }
}

class _UserAuthenticationState extends State<UserAuthentication> {
  String _email = '';
  String _password = '';

  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _isLoading = false;

  Future<void> _authenticate() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      final User user = userCredential.user!;
      print('User $user authenticated. authentication successful');

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => UserScreen(
            userEmail: _email,
          ),
        ),
      );
    } catch (e) {
      print('User authentication failed.');
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Authentication'),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email address.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value!;
                    },
                    decoration: const InputDecoration(labelText: 'Email'),
                    style: const TextStyle(color: Colors.white),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty || value.length < 7) {
                        return 'Password must be at least 7 characters long.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _password = value!;
                    },
                    decoration: const InputDecoration(labelText: 'Password'),
                    style: const TextStyle(color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        _authenticate();
                      }
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
    );
  }
}
