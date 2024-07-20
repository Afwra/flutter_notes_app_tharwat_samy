import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change = $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('closed = ${bloc.runtimeType}');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('created = ${bloc.runtimeType}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('Error ${error.runtimeType} happend');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint('Event ${event.runtimeType} happend');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint(
        'went from ${transition.currentState} to ${transition.nextState}');
  }
}
