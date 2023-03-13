import 'dart:developer';

import 'package:basic_example_bloc/bloc/increment_decrement_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final IncrementDecrementBloc incrementDecrementBloc =
      IncrementDecrementBloc();
  @override
  void initState() {
    incrementDecrementBloc.add(const IncrementEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocProvider(
        create: (context) => incrementDecrementBloc,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<IncrementDecrementBloc, IncrementDecrementState>(
                builder: (context, state) {
                  if (state is IncrementState) {
                    // counter = state.counter;
                    log('increment very well');
                    return Text(
                      '${state.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }
                  return Text(
                    'empty',
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementDecrementBloc.add(const IncrementEvent());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
