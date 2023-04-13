import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hive/add_info_page.dart';
import 'package:flutter_hive/bloc/cubit/tecorb_cubit.dart';
import 'package:flutter_hive/boxes.dart';
import 'package:flutter_hive/tecorb.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tecorb Employees"),
      ),
      body: BlocBuilder<TecorbCubit, TecorbState>(
        builder: (context, state) {
          if (state is TecorbListState) {
            return state.teborbians.isEmpty
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
                            context
                                .read<TecorbCubit>()
                                .deleteItemAtIndex(index);
                          },
                        ),
                      );
                    },
                  );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => AddInfoPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
