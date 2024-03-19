import 'package:bloc_practice/logic/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit counterCubit = CounterCubit();

    setUp(() => counterCubit = CounterCubit());
    tearDown(() => counterCubit.close());

    test('the initial state',
        () => expect(counterCubit.state, CounterState(counterValue: 0)));
  });
}
