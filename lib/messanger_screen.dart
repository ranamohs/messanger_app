import 'package:flutter/material.dart';
import 'package:messanger_app/widgets/chat_item_widget.dart';
import 'package:messanger_app/model/user_model.dart';
import 'package:messanger_app/widgets/story_item_widget.dart';

class MessangerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 28.0,
              backgroundImage: AssetImage(
                  'assets/images/image.jpeg'),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 18.0,
            backgroundColor: Colors.grey.withOpacity(0.3),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                size: 20.0,
              ),
            ),
          ),
          SizedBox(width: 8),
          CircleAvatar(
            radius: 18.0,
            backgroundColor: Colors.grey.withOpacity(0.3),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      18.0,
                    ),
                    color: Colors.grey.withOpacity(0.3)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                      ),
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 110.0,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>SizedBox(width: 20,),
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context , index)=>StoryItem(user: users[index]),
                  itemCount: users.length, ),
              ),
              SizedBox(height: 10,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 20,),
                scrollDirection: Axis.vertical,
                itemBuilder: (context , index)=>ChahtItem(user: users[index]),
                itemCount: users.length,
              ),
            ],
          
          ),
        ),
      ),

    );
  }
}
