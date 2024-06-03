import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key, required this.backhome});

  final void Function() backhome;
  @override
  State<SignUp> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Center(
            
            child: ListView(
              shrinkWrap: true,
              children: [
                CustomTextField(
                    controller: _firstnameController,
                    hintText: 'Enter your first name',
                    labelText: 'Firstname',
                    icon: Icons.person),
                CustomTextField(
                    controller: _lastnameController,
                    hintText: 'Enter your last name',
                    labelText: 'Lastname',
                    icon: Icons.person),
                CustomTextField(
                    controller: _emailController,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    icon: Icons.email),
                CustomTextField(
                    controller: _phoneController,
                    hintText: 'Enter Your Mobile Number',
                    labelText: 'Mobile',
                    icon: Icons.phone),
                CustomTextField(
                    controller: _passwordController,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    icon: Icons.key),
                CustomTextField(
                    controller: _confirmPasswordController,
                    hintText: 'Enter your password',
                    labelText: 'Confirm Password',
                    icon: Icons.key),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print(_firstnameController.text);
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Processing Data'),
                          ),
                        );
                      }
                    },
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
                      'SignUp',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
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
      ),
    );
  }
}