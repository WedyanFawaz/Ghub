import 'package:flutter/material.dart';
import 'package:ghub_app/Models/FriendsModel.dart';

class FriendWidget extends StatelessWidget {
  Friend friend;
  FriendWidget(this.friend);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 70,
      color: Color(0xFFFFFFFF),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
            child: CircleAvatar(
              backgroundImage: NetworkImage(friend.image),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                friend.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "${friend.NumOfProjects} Projects",
                style:
                    const TextStyle(color: Color.fromARGB(255, 131, 130, 130)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ActiveFriends extends StatelessWidget {
  Friend friend;
  ActiveFriends(this.friend);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            maxRadius: 44,
              minRadius: 22,
            child: CircleAvatar(
              maxRadius: 40,
              minRadius: 20,
              backgroundImage: NetworkImage(friend.image),
            ),
          ),
          Text(
            friend.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            "Profile",
            style: const TextStyle(color: Color.fromARGB(255, 131, 130, 130)),
          ),
        ],
      ),
    );
  }
}
