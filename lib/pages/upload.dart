// Importing used packages and frameworks
import 'package:flutter/material.dart';

// The class builds the UserNew page
class UserNew extends StatelessWidget {
  @override

  // Function builds the widget
  Widget build(BuildContext context) {

    // Returning a Scaffold widget which implements the basic material design visual and layout structure
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

      // The body of the page is a scrollable list
      body: SingleChildScrollView( // Adds a SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Your new recipe!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),

              // Text field for the name of the dish
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name of the dish',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),

              // Row for the cooking time and preparation time
              Row(
                children: <Widget>[
                  // Text field for the cooking time
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cooking time',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  // Text field for the preparation time
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Preparation time',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Divider(color: Colors.grey),
              // Title for the ingredients
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              // Text fields for the ingredients
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ingredient 1',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ingredient 2',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Ingredient 3',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              // Row for the add and remove ingredient buttons
              Row(
                children: <Widget>[
                  // The add ingredient button
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      // Left free for now but later you can add the logic to add a new ingredient box here
                    },
                  ),
                  // The remove ingredient button
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      // Left free for now but later you can add the logic to remove an ingredient box here
                    },
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Divider(color: Colors.grey),
              // Title for the preparation
              Text(
                'Preparation:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              // Text field for the preparation
              TextField(
                decoration: InputDecoration(
                  hintText: 'Describe the preparation',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              // Row for the upload photo and video buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // The upload photo button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Left free for now but later you can add the logic to upload photos here
                      },
                      child: Icon(Icons.photo_camera),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(209, 17, 0, 0.94),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  // The upload video button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Left free for now but later you can add the logic to upload videos here
                      },
                      child: Icon(Icons.videocam),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(209, 17, 0, 0.94),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // The upload recipe button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Left free for now but later you can add the logic to upload the recipe here
                  },
                  child: Text(
                    'UPLOAD',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

