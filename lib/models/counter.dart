import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_provider/services/ilocal_storage.dart';

class Counter extends StateNotifier<int> with LocatorMixin{
  Counter() : super(0);

  void increment() {
    state++;
  }
 
  void decrement() {
    state--;
  }

  @protected
  @override
  set state(int value) {
    read<ILocalStorage>().saveInt('count', value);
    super.state = value;
  }
}