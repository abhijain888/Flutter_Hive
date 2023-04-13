import 'package:bloc/bloc.dart';
import 'package:flutter_hive/boxes.dart';
import 'package:meta/meta.dart';

import '../../tecorb.dart';

part 'tecorb_state.dart';

class TecorbCubit extends Cubit<TecorbState> {
  TecorbCubit() : super(TecorbInitial()) {
    emit(
      TecorbListState(teborbians: boxTecorb.values.toList() as List<Tecorb>),
    );
  }

  void addItem(String name, String tech) async {
    await boxTecorb.add(
      Tecorb(
        name: name,
        tech: tech,
      ),
    );

    emit(
      TecorbListState(teborbians: boxTecorb.values.toList() as List<Tecorb>),
    );
  }

  void deleteItemAtIndex(int index) {
    boxTecorb.deleteAt(index);
    emit(
      TecorbListState(teborbians: boxTecorb.values.toList() as List<Tecorb>),
    );
  }
}
