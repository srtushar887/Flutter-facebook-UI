import 'package:a_srtappfacebookui/widgets/profile_avatar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:a_srtappfacebookui/models/models.dart';
import 'package:a_srtappfacebookui/data/data.dart';
class CreatePostContainer extends StatelessWidget {

  final User currentUser;
  CreatePostContainer({Key key,@required this.currentUser}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
             ProfileAvatar(imageUrl: currentUser.imageUrl),
              SizedBox(width: 8.0,),
              Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mind?'),
              ))
            ],
          ),

          Divider(height: 10.0,thickness: 0.5,),

          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.videocam,color: Colors.red,),
                  label: Text("Live"),
                ),

                VerticalDivider(width: 8.0,),
                FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.photo_library,color: Colors.green,),
                  label: Text("Photo"),
                ),

                VerticalDivider(width: 8.0,),
                FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.video_call,color: Colors.purpleAccent,),
                  label: Text("Room"),
                ),

              ],
            ),
          )


        ],
      ),
    );
  }
}

