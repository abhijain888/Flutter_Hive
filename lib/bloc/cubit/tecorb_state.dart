part of 'tecorb_cubit.dart';

@immutable
abstract class TecorbState {
  const TecorbState();
}

class TecorbInitial extends TecorbState {}

class TecorbListState extends TecorbState {
  final List<Tecorb> teborbians;

  const TecorbListState({required this.teborbians});
}
