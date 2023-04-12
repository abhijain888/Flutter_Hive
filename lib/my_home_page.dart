import 'package:flutter/material.dart';
import 'package:flutter_hive/add_info_page.dart';
import 'package:flutter_hive/boxes.dart';
import 'package:flutter_hive/tecorb.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tecorb Employees"),
      ),
      body: boxTecorb.isEmpty
          ? const Center(
              child: Text("Add a new employee"),
            )
          : ListView.builder(
              itemCount: boxTecorb.length,
              itemBuilder: (context, index) {
                Tecorb tecorb = boxTecorb.getAt(index);
                return ListTile(
                  title: Text(tecorb.name),
                  subtitle: Text(tecorb.tech),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        boxTecorb.deleteAt(index);
                      });
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(builder: (_) => AddInfoPage()),
              )
              .then((value) => setState(() {}));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
