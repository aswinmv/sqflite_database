import 'package:flutter/material.dart';
import 'package:sqlite_database/services/db_helper.dart';

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
            ElevatedButton(
                onPressed: () async {
                  await DatabaseHelper.instance.insertData(
                      {DatabaseHelper.columnName: " helloo araa aswin"});
                },
                child: const Text("Create")),
            ElevatedButton(
                onPressed: () async {
                  var dbQuery = await DatabaseHelper.instance.queryDatabase();
                  print(dbQuery);
                },
                child: const Text("Read")),
            ElevatedButton(
                onPressed: () async {
                  await DatabaseHelper.instance.updateData({
                    DatabaseHelper.columnId: 4,
                    DatabaseHelper.columnName: "hai"
                  });
                },
                child: const Text("Update")),
            ElevatedButton(
                onPressed: () async {
                  await DatabaseHelper.instance.deleteData(3);
                },
                child: const Text("Delete"))
          ]),
        ),
      ),
    );
  }
}
