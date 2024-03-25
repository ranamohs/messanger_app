
import 'package:flutter/material.dart';
import 'package:messanger_app/model/user_model.dart';

class ChahtItem extends StatelessWidget {
  const ChahtItem({super.key ,required this.user });
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage:AssetImage('${user.image}'),
              ),

            CircleAvatar(
                backgroundColor: Colors.white, radius: 9),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 7.0,
            ),
          ],
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${user.name}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${user.message}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0),
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle),
                    ),
                  ),
                  Text(
                    '02:00 pm',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
