import 'package:flutter/material.dart';
import './transactionList.dart';
import './newTransaction.dart';
import '../models/transactions.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transactions> _userTransactions = [
    Transactions(id: '1', title: 'Shoes', amount: 12.96, date: DateTime.now()),
    Transactions(id: '2', title: 'Phones', amount: 44.90, date: DateTime.now())
  ];

  void addNewTransaction(String title, double amount) {
    final newTx = Transactions(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
