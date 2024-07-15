import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit3/cubit/counter_cubit.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state){
          return Center(
            child: Text('$state'),
            );
        }),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: (){
          context.read<CounterCubit>().increment();
        }),
    );
  }
}
