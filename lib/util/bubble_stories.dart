// Importing used packages and frameworks
import 'package:flutter/material.dart';

// This class builds the BubbleStories widget
class BubbleStories extends StatelessWidget {

  // The text to be displayed under the bubble
  final String text;

  // Constructor for the BubbleStories class, requires a text parameter
  BubbleStories({required this.text});

  @override
  // This function builds the widget
  Widget build(BuildContext context) {

    // It returns a padded widget
    return Padding(

      // Sets the padding for all sides to 8.0
      padding: const EdgeInsets.all(8.0),

      // The child of the Padding widget is a Column widget
      child: Column(

        // The Column widget has two children
        children: [
          // The first child is a Container widget
          Container(
            // Sets the width and height of the container to 60
            width: 60,
            height: 60,
            // Sets the decoration of the container to be a grey circle
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),

          // Adds a SizedBox widget for spacing
          SizedBox(
            height: 10,
          ),
          
          // The second child is a Text widget that displays the text passed to the BubbleStories class
          Text(text)
        ],
      ),
    );
  }
}
