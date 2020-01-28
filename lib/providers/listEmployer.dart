import 'package:addemployer/models/AddEmployerData.dart';
import 'package:flutter/material.dart';

class ListEmployer extends StatelessWidget {
  final List<Employer> employer;
  ListEmployer(this.employer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: employer.map((tx) {
            return Card(
              margin: EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 7,
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Name - ${tx.name}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Age - ${tx.age}',
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    'Marks - ${tx.marks}',
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  Divider(),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
