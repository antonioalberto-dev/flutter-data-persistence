import 'package:flutter/material.dart';
import 'package:flutter_persistencia/database/http/webcliente.dart';
import 'package:flutter_persistencia/widgets/progress.dart';

import '../models/transaction.dart';
import '../widgets/centered_message.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: FutureBuilder(
        future: Future.delayed(const Duration(milliseconds: 300)).then((value) => findAll()),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              // TODO: Handle this case.
              break;
            case ConnectionState.waiting:
              Progress();
              break;
            case ConnectionState.active:
              // TODO: Handle this case.
              break;
            case ConnectionState.done:
              if (snapshot.hasData) {
                final List<Transaction>? transactions = snapshot.data;
                if (transactions!.isEmpty) {
                  return CenteredMessage(
                    'No transaction found',
                    icon: Icons.warning_rounded,
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final Transaction transaction = transactions[index];
                      return Card(
                        shadowColor: Colors.green,
                        elevation: 2,
                        child: ListTile(
                          leading: Icon(Icons.monetization_on,
                              color: Colors.green[700]),
                          title: Text(
                            'R\$ ${transaction.value.toStringAsFixed(2).replaceAll('.', ',')}',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[700]),
                          ),
                          subtitle: Text(
                            'Conta: ${transaction.contact.accountNumber}',
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: transactions.length,
                  ),
                );
              }
          }
          return CenteredMessage(
            'Unknown error',
            icon: Icons.error,
          );
        },
      ),
    );
  }
}
