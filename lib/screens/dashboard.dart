import 'package:flutter/material.dart';
import 'package:flutter_persistencia/screens/contacts_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/logo.png'),
            Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContactsList(),
                  ));
                },
                child: Container(
                  height: 100,
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(Icons.people, color: Colors.white),
                        Text(
                          'Contacts',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
