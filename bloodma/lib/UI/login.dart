import 'package:flutter/material.dart';
import 'package:bloodma/UI/Widget/customtextfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() {
    return _LoginState();
  }
}

class _LoginState() extends State<Login>{


  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String loginText = "LOGIN";
  String signupText = "/SignUp";
  bool isLoading = false;
  bool hiddenText = true;
  var email = "", password = "";
  var scaffoldkey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: const Color(0xff44130f),
      key: scaffoldkey,
      body: BaseScreen(
        child: Container(
          foregroundDecoration: const BoxDecoration(color: Colors.black12),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Text(
                          loginText,
                          style: const TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          signupText,
                          style: const TextStyle(color: Colors.white, fontSize: 19),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => SignUp()));
                        },
                      )
                    ],
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: <Widget>[
                        CustomTextField(
                          hint: "Email",
                          icon: Icons.email,
                          onSaved: (value) {
                            email = value;
                          },
                        ),
                        CustomTextField(
                          hint: "Password",
                          icon: Icons.lock,
                          obscure: hiddenText,
                          onSaved: (value) {
                            password = value;
                          },
                          suffix: IconButton(
                            icon: Icon(
                              hiddenText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                hiddenText = !hiddenText;
                              });
                            },
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red),
                            child: Center(
                              child: isLoading
                                  ? const CircularProgressIndicator()
                                  :const  Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          onTap: () {
                            if (_formkey.currentState.validate()) {
                              _formkey.currentState.save();
                              setState(() {
                                isLoading =
    )
  }
}
