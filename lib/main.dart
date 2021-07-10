import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UItuts(),
  ));
}

class UItuts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
        centerTitle: true,
      ),
      body: ExampleWidget(),
    );
  }
}

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(32),
      children: [
        buildBackgroundCard1(),
        SizedBox(height: 16),
        // Text(
        //   "ABAL",
        //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        // ),
        Center(child: buildBackgroundCard2()),
        Center(
          child: BuildBurger(),
        ),
      ],
    );
  }
}

Widget buildBackgroundCard1() {
  final UibgI =
      "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80";
  return Container(
    padding: EdgeInsets.all(24),
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(UibgI),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(.25), BlendMode.darken),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Cottage",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "70-160\$",
          style: TextStyle(fontSize: 24, color: Colors.white),
        )
      ],
    ),
  );
}

Widget buildBackgroundCard2() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    color: Colors.blue[300],
    child: Container(
      width: 160,
      height: 160,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.access_time,
            size: 48,
            color: Colors.blue[700],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Active",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "2 times a day",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

Widget BuildBurger() {
  final bcImage =
      "https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80";
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      padding: EdgeInsets.all(12),
      color: Color(0xFF010101),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            bcImage,
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Text(
            "Beef Burger",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Onion with Chesse",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "\$18",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 160,
              ),
              Icon(
                Icons.add,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    ),
  );
}
