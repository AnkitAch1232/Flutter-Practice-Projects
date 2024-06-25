import 'package:flutter/material.dart';

import '../data/person_data.dart';
import '../screens/person_detail_screen.dart';

class PersonContainer extends StatelessWidget {
  final int index;

  const PersonContainer({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PersonDetailsScreen(
              personDatay: personData[index],
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: double.maxFinite,
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(personData[index]['name']),
                  Text(personData[index]['email'])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
