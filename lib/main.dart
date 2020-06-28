import './model/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Laptop',
      amount: 500.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New T-shirt',
      amount: 23.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'New Table',
      amount: 499.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense App"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Chart"),
            ),
          ),
          Column(
            children: transactions.map((t) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(t.amount.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(t.title),
                        Text(t.date.toLocal().toString()),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
