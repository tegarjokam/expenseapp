import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Text(
                    '\$ ${transactions[index].amount.toStringAsFixed(1)}',
                    style: TextStyle(
                        color: Colors.red[200],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      DateFormat()
                          .add_yMMMMEEEEd()
                          .format(transactions[index].date),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
