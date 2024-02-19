import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghub_app/Controllers/Controllers.dart';
import 'package:ghub_app/Widges/FriendWidget.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
 final FriendController _friendController = Get.put(FriendController());
  TextEditingController editingController = TextEditingController();

  List<String> names = []; // Save the names
  List<String> friends = []; // The current result while searching

  @override
  void initState() {
    names = getNames();
    friends = names;
    super.initState();
  }

  List<String> getNames() {
    // To convert Friend object to a list of names
    List<String> names = [];
    for (var friend in _friendController.options) {
      names.add(friend.name);
    }
    return names;
  }

  void filterSearchResults(String query) {
    // Searching
    setState(() {
      friends = names
          .where((friend) =>
              friend.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: friends.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         title: Text('${friends[index]}'),
            //       );
            //     },
            //   ),
            // ),
               
          
                Text(
                'Activities',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Obx(() => Expanded(
        child: ListView.builder(
          shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _friendController.options.length,
            itemBuilder: (context, index) {
              final _friend = _friendController.options[index];
              if (_friend.isActive == true) {
                return ActiveFriends(_friend);
              }
            }))),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('All friends',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Obx(() => Expanded(
        child: ListView.builder(
            itemCount: _friendController.options.length,
            itemBuilder: (context, index) {
              final _friend = _friendController.options[index];
              return FriendWidget(_friend);
            })))
              ],
            )
    )
    );
  }
}
