import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userList[index].avatarUrl),
            ),
            title: Text(userList[index].name),
            subtitle: Text(userList[index].email),
          );
        },
      ),
    );
  }
}

class User {
  final String name;
  final String email;
  final String avatarUrl;

  User({required this.name, required this.email, required this.avatarUrl});
}

List<User> userList = [
  User(
    name: 'John Doe',
    email: 'john.doe@example.com',
    avatarUrl: 'https://picsum.photos/id/1/200/300',
  ),
  User(
    name: 'Jane Smith',
    email: 'jane.smith@example.com',
    avatarUrl: 'https://picsum.photos/id/2/200/300',
  ),
  // Add more users here
];
