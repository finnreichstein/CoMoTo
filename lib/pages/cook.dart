// Importing used packages and frameworks
import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

// Main function to run the UserCook app
void main() {
  runApp(UserCook());
}

// StatefulWidget (UserCook) manages the state of the app
class UserCook extends StatefulWidget {
  const UserCook({Key? key}) : super(key: key);

  @override
  State<UserCook> createState() => _UserCookState();
}

//  Set state for UserCook (_UserCookState)
class _UserCookState extends State<UserCook> {

  // AgoraClient is used for video calling
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "fc685062b62d43c988bc55542e87b913",
      channelName: "ComotoRoom",
      username: "user",
    ),

  // Code for making sure that permissions for camera and microphone are enabled
  enabledPermission: [
    Permission.camera,
    Permission.microphone,
  ],
  );

  // initState is called when this object is inserted into the tree
  @override
  void initState() {
    super.initState();
    initAgora();
  }

  // initAgora initializes the Agora client
  void initAgora() async {
    await client.initialize();
  }

  // UI of the page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Agora VideoUIKit'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Stack(
            children: [

              // AgoraVideoViewer is used to view the video call
              AgoraVideoViewer(
                client: client,
                layoutType: Layout.floating,
                enableHostControls: true, // enables host control if added
              ),

              // AgoraVideoButtons to control the video call
              AgoraVideoButtons(
                client: client,
                addScreenSharing: false, // enables screen sharing if added
              ),
            ],
          ),
        ),
      ),
    );
  }
}