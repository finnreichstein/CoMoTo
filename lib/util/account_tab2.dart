//This code matches account_tab1.dart. Therefore no further explanation needed
import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  final List<String> userPosts = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.pink,
          ),
        );
      },
    );
  }
}
