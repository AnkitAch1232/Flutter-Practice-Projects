import 'package:flutter/material.dart';

class PersonDetailsScreen extends StatelessWidget {
  final Map personDatay;
  const PersonDetailsScreen({super.key, required this.personDatay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(personDatay['name']),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text("Name : ${personDatay['name']}"),
          Text("Phone : ${personDatay['phone']}"),
          Text("Email : ${personDatay['email']}"),
          Text("Country : ${personDatay['country']}"),
          Text("Company : ${personDatay['company']}"),
          Text("Post : ${personDatay['Post']}"),
        ],
      ),
    );
  }
}
