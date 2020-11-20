import 'dart:math';

import '../modules/transaction.dart';
import 'package:flutter/material.dart';
import './TransactionForm.dart';
import './Transaction_list.dart';

class TransactionWidget extends StatefulWidget {
  @override
  _TransactionWidgetState createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 1,
      title: 'New Shoes',
      amount: 23.4,
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      title: 'New Shoes',
      amount: 23.4,
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      title: 'New Shoes',
      amount: 23.4,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: Random().nextInt(200),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
