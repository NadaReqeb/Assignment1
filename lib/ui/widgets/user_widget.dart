import 'package:assignment1/models/user_model.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  userModel usermodel;
  UserWidget(this.usermodel);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:[
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(usermodel.userImage),
              ),
              SizedBox(height: 15,),
              Text(usermodel.name,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ]

        ),
      ),
    );
  }
}
