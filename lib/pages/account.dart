// Importing used packages and frameworks
import 'package:comoto/util/account_tab1.dart';
import 'package:comoto/util/account_tab2.dart';
import 'package:comoto/util/account_tab3.dart';
import 'package:comoto/util/account_tab4.dart';
import 'package:comoto/util/bubble_stories.dart';
import 'package:flutter/material.dart';

// Stateless widget (UserAccount) builds the user account page
class UserAccount extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    // DefaultTabController allows User switching between tabs
    return DefaultTabController(
      length: 4,
      child: Scaffold(


        // AppBar contains the menu icon, logo, and chat icon
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


        // Body of the page contains user info, profile picture, stats, bio, buttons, stories, and tabs
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            // Profile picture and user stats (posts, followers, following)
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),


                  // User stats (posts, followers, following)
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '5',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '3843',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text('Follower'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '982',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            // User name and bio
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Andy',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'eat more spaghetti to forgetti all your regretti',
                  ),
                ],
              ),
            ),


            // Edit Profile, Saved Recipes, and Cook Book buttons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Saved Recipes')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Center(child: Text('Cook Book')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            // Stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: 'Vegan'),
                  BubbleStories(text: 'Pasta'),
                  BubbleStories(text: 'Tapas'),
                  BubbleStories(text: 'Snacks'),
                ],
              ),
            ),


            // Tabs for different views (grid, video, book, person)
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.book),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),

            // Refference for tab code
            Expanded(
              child: TabBarView(children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
                AccountTab4(),
              ]),
              )

          ],
        ),
      ),
    );
  }
}
