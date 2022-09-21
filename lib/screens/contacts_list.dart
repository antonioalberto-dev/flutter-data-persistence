import 'package:flutter/material.dart';
import 'package:flutter_persistencia/screens/contact_form.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.5),
        child: ListView(
          children: const [
            Card(
              // color: Colors.white12,
              child: ListTile(
                title: Text(
                  'Nome',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Conta',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ContactForm()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
