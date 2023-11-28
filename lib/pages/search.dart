// Importing used packages and frameworks
import 'package:flutter/material.dart';

// The class builds the UserSearch page
class UserSearch extends StatelessWidget {
  @override

  // The function builds the widget
  Widget build(BuildContext context) {

    // It returns a Scaffold widget which implements the basic material design and visual layout structure
    return Scaffold(

      // AppBar contains the menu icon and the search bar
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(209, 17, 0, 0.94),
        title: Row(
          children: [
            Icon(Icons.menu, color: Colors.white),
            SizedBox(width: 16),

            // Expanded widget to take up remaining space
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0.01), // The height of the search field has been reduced by a third.
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30), 
                ),

                // TextField widget for user input
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                  
                  // Function to handle user input
                  onSubmitted: (value) {
                    // Left free but search logic can be implemented
                  },
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[],
      ),

      // Body of the Scaffold, contains a GridView
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,

        // Generates a list of 100 containers
        children: List.generate(100, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.zero, 
            ),
          );
        }),
      ),
    );
  }
}
