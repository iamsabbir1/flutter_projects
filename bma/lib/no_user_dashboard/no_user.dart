import 'package:flutter/material.dart';
import 'package:bma/no_user_dashboard/app_bar_no_user.dart';

class NoUser extends StatefulWidget {
  const NoUser({super.key});

  @override
  State<NoUser> createState() {
    return _NoUserState();
  }
}

class _NoUserState extends State<NoUser> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(60),
        child: CustomizedAppBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to No User',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
