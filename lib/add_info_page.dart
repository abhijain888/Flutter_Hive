import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hive/bloc/cubit/tecorb_cubit.dart';

class AddInfoPage extends StatelessWidget {
  AddInfoPage({super.key});

  String name = "", tech = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Employee info"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(hintText: "Enter employee name"),
            onChanged: (value) {
              name = value;
            },
          ),
          TextField(
            decoration: const InputDecoration(hintText: "Enter tech"),
            onChanged: (value) {
              tech = value;
            },
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<TecorbCubit>(context).addItem(name, tech);
              // context.read<TecorbCubit>().addItem(name, tech);

              Navigator.of(context).pop();
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }
}
