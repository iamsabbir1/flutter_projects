import 'custom_container.dart';
import 'icon_text_view.dart';
import 'package:flutter/material.dart';

class ViewListSimplified extends StatelessWidget {
  const ViewListSimplified({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Row(
            children: [
              const CustomContainer(
                w: 0.3,
                h: 1,
                text: 'AB+',
              ),
              Container(
                color:const  Color.fromARGB(255, 5, 141, 10),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 1,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconTextRow(icon: Icons.person, text: 'Sabbir Hasan'),
                    IconTextRow(icon: Icons.location_on_sharp, text: 'Location'),
                    IconTextRow(icon: Icons.send, text: 'Tangail'),
                    IconTextRow(icon: Icons.send, text: 'Can\'t donate now!'),
                  ],
                ),
        
              ),
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 1,
                child: const Center(
                  child: Icon(Icons.phone),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
