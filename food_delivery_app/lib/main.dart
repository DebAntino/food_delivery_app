import 'package:flutter/material.dart';
import 'package:testing/home.dart';

//import 'package:food_delivery_app/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resturants & Foods'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.brown[400],
      ),
      //body: Resturants(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search for resturants, cuisines...',
                prefixIcon: Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(15),
                    right: Radius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Resturants(),
          ],
        ),
      ),
    );
  }
}
