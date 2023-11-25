import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
            child: Text(
          "SQLlite CRUD",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        )),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          child: Column(children: [
            ElevatedButton(onPressed: () {}, child: const Text("Create")),
            ElevatedButton(onPressed: () {}, child: const Text("Read")),
            ElevatedButton(onPressed: () {}, child: const Text("Update")),
            ElevatedButton(onPressed: () {}, child: const Text("Delete"))
          ]),
        ),
      ),
    );
  }
}
