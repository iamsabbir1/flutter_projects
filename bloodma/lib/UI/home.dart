import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  
  const Home({super.key});
  @override
  State<Home> createState(){
    return _Home();
  }
}

class _Home extends State<Home> {
  

  @override
  Widget build(BuildContext context)
  {

    bool isLoggedIn= true;
    var scaffoldkey = GlobalKey<ScaffoldState>();

    getUser() async {
      if (isLoggedIn == false) {
        setState(() {
          isLoggedIn = true;
        });
      }
    }


  showErrorDialog() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              content: const Text('You must Login to continue !',
                  style: TextStyle(color: Colors.red)),
              actions: <Widget>[
                FlatButton(
                    child: const Text('Ok'),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    }),
              ],
              title: const Text(
                'Oops',
                style: TextStyle(fontWeight: FontWeight.bold),
              ));
        });
  }

    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: const Text("Blood Management App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: const Center(
        child: Text("Home Page"),
      )
    );
  }
}
