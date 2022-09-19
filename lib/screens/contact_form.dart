import 'package:flutter/material.dart';

import '../models/contact.dart';

class ContactForm extends StatefulWidget {

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  label: Text(
                    'Full name',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  icon: Icon(
                    Icons.people,
                    color: Colors.green[800],
                  )),
            ),
            TextField(
              controller: _accountController,
              decoration: InputDecoration(
                  label: Text(
                    'Account number',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  icon: Icon(
                    Icons.numbers,
                    color: Colors.green[800],
                  )),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.only(top: 17.5),
                child: ElevatedButton(
                  onPressed: () {
                    final String name = _nameController.text;
                    final int? accountNumber = int.tryParse(_accountController.text);
                    final Contact newContact = Contact(name, accountNumber);
                  },
                  child: Text('Save'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
