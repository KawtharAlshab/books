import 'package:cubit_test/counter/counter-cubit/counter-states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super(CounterInitState());
   int counter = 1 ;
  void increment(){
    counter++ ;
    emit(CounterIncrementState());
  }
  void decrement(){
    counter-- ;
    emit(CounterdecrementState());
  }
}