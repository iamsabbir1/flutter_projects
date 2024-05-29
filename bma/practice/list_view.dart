import 'package:flutter/material.dart';

class ViewList extends StatelessWidget {
  const ViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 19, 2),
                ),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 1,
                child: const Center(
                  child:  Text(
                    'AB+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 5, 141, 10),
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 1,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          
                          'Sabbir Hasan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          
                          'Hello',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          
                          'Hello',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          
                          'Hello',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          
                        ),
                      ],
                    ),


                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 17, 0),
                ),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 1,
                child: const Center(
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 30,)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
