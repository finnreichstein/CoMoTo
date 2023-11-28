// Importing used packages and frameworks
import 'package:flutter/material.dart';

// This class builds the UserPosts widget
class UserPosts extends StatelessWidget {
  final String name;

  // Constructor for the UserPosts class
  UserPosts({required this.name, Key? key}) : super(key: key);

  @override
  // This function builds the widget
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  // Profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 184, 175, 175),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  // Name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // Menu icon
              Icon(Icons.menu),
            ],
          ),
        ),

        // Post
        Container(
          height: 400,
          color: Color.fromARGB(255, 184, 175, 175),
        ),

        // Below the Post -> buttons and comments
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  // Like button
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),

                    // Comment button
                    child: Icon(Icons.chat_bubble_outline),
                  ),

                  // Share button
                  Icon(Icons.share),
                ],
              ),

              // Bookmark button
              Icon(Icons.bookmark),
            ],
          ),
        ),

        // Comments
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Gefällt '),
              Text(
                'Marc',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' und '),
              Text(
                'weiteren',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        // Caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: 
                  ' Meine ersten Home Made Pasta mit Burata!'),
              ], 
            ),
          ),
        ),
      ],
    );
  }
}
