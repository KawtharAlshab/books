import 'package:cubit_test/counter/counter-cubit/counter-states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter-cubit/counter-cubit.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          CounterCubit counterCubit =BlocProvider.of(context);
          return Scaffold(
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton(

                  onPressed: counterCubit.increment,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                SizedBox(
                  height: 40,
                ),
                FloatingActionButton(
                  onPressed:counterCubit.decrement ,
                  tooltip: 'decrement',
                  child: const Icon(Icons.minimize),
                ),
              ],
            ),
            body: Center(

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      counterCubit.counter.toString(), style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            // This trailing comma makes auto-formatting nicer for build methods.
          );
        },
      ),
    );
  }
}
