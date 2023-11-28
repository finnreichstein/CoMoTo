// Importing used packages and frameworks
import 'package:flutter/material.dart';
import 'package:comoto/util/bubble_stories.dart';
import 'package:comoto/util/user_posts.dart';

// Stateless widget (UserHome) builds the user home page
class UserHome extends StatelessWidget {

  // List of people for the stories and posts
  final List<String> people = ['Hannakocht', 'Leo300', 'Mats', 'Leandra', 'Max', 'Theo', 'Anna'];

  @override

  // Building the widget
  Widget build(BuildContext context) {

    // Returning a Scaffold widget which implements the basic material design visual layout structure
    return Scaffold(

      // AppBar contains the menu icon, title, and chat icon
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(209, 17, 0, 0.94),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, color: Colors.white),
            Text(
              'CoMoTo',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'AlbertSans', 
              ),
            ),
            Icon(Icons.chat_bubble_outline, color: Colors.white),
          ],
        ),
      ),

      // Body of the Scaffold
      body: Column(
        children: [

          // Stories
          Container(
            height: 130,

            // Building a horizontal list of stories
            child: ListView.builder(
              itemCount: people.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {

                // Each item in the list is a BubbleStories widget
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          
          // Posts
          Expanded(

            // Building a vertical list of posts
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {

                // Each item in the list is a UserPosts widget
                return UserPosts(name: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
