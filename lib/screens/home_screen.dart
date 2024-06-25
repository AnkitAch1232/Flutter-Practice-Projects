import 'package:flutter/material.dart';
import 'package:sample/data/person_data.dart';
import 'package:sample/screens/stack_demo.dart';
import 'package:sample/widgets/person_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Person Database"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StackDemo(),
                ),
              );
            },
            icon: Icon(
              Icons.share,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: personData.length,
          itemBuilder: (context, index) {
            return PersonContainer(index: index);
          }),
    );
  }
}
