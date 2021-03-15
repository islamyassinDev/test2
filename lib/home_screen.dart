import 'package:flutter/material.dart';
import 'package:test1_app/model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test App')),
      body: ListView.builder(
          itemBuilder: (ctx, index) => ListTile(
                leading: CircleAvatar(
                  child: Text(data[index].age.toString()),
                ),
                title: Text(data[index].firstName + ' ' + data[index].lastName),
                subtitle: Text(data[index].email),
                trailing: TextButton(
                  child: Text('Show Card'),
                  onPressed: () => showDialog(
                    context: ctx,
                    builder: (contx) => Container(
                      height: 100,
                      child: AlertDialog(
                        content: Text('Full name = ${data[index].firstName} '
                            '${data[index].lastName} \n'
                            'Age = ${data[index].age.toString()} \n'
                            'E-mail = ${data[index].email} \n'
                            'Age = ${data[index].age.toString()} '),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(),
                            child: Text('OK Islam Yassin'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          itemCount: data.length),
    );
  }
}
