import 'package:flutter/material.dart';

// This class builds the first tab of the Account page
class AccountTab1 extends StatelessWidget {

  // List to store user posts
  final List<String> userPosts = [];

  @override
  // This function builds the widget
  Widget build(BuildContext context) {
    // Returns a grid view builder
    return GridView.builder(

      // Sets the item count to 5 (varies from page 1 to 4 so it has a contrast)
      itemCount: 5,

      // Sets the grid delegate to have a fixed cross axis count of 3
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),

      // Builds each item in the grid
      itemBuilder: (context, index) {

        // Returns a padded container with a grey color (varies from page 1 to 4 so it has a contrast)
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.grey,
          ),
        );
      },
    );
  }
}
