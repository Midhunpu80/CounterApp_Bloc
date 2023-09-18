import 'package:bloc_app/counter_app/counter_app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 500,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  context.read<CounterAppBloc>().add(increase());
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  "Increment",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )),
            BlocBuilder<CounterAppBloc, CounterAppState>(
              builder: (context, state) {
                return Text(
                  state.value.toString(),
                  style: TextStyle(fontSize: 15, color: Colors.black),
                );
              },
            ),
            ElevatedButton.icon(
                onPressed: () {
                  context.read<CounterAppBloc>().add(decrease());
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  "decrase",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
