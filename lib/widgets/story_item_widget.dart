
import 'package:flutter/material.dart';
import 'package:messanger_app/model/user_model.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key , required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('${user.image}'),
              ),
              CircleAvatar(
                  backgroundColor: Colors.white, radius: 9),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 7.0,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Text(
              '${user.name}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],

      ),
    );

  }
}
