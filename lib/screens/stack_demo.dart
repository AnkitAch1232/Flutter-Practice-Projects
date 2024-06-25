import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack Demo",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.abc_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.abc_outlined,
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Center(
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image(
                  image: AssetImage('assets/images/Image1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 420,
              width: 200,
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 2,
            left: 2,
            //right: 2,
            child: Container(
              height: 200,
              width: 100,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 25,
            right: 25,
            bottom: 24,
            left: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Dairy",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
