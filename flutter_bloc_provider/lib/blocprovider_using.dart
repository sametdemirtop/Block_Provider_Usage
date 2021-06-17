import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_provider/blocmodels/counter_controller.dart';
import 'package:flutter_bloc_provider/blocmodels/counter_event.dart';
import 'package:flutter_bloc_provider/blocmodels/counter_state.dart';

class blocProviderKullanimi extends StatefulWidget {
  @override
  _blocProviderKullanimiState createState() => _blocProviderKullanimiState();
}

class _blocProviderKullanimiState extends State<blocProviderKullanimi> {
  final _counterController = CounterController();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Provider Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sayac : "),
            BlocBuilder<CounterController, CounterState>(
              builder: (context, counterState) {
                return Text(
                  counterState.counter.toString(),
                  style: TextStyle(fontSize: 48),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1",
            onPressed: () {
              context.read<CounterController>().add(arttir());
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.pink[200],
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: "2",
            onPressed: () {
              context.read<CounterController>().add(azalt());
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.pink[200],
          ),
        ],
      ),
    );
  }
}
