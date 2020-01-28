import 'package:addemployer/models/AddEmployerData.dart';
import 'package:addemployer/providers/createEmployer.dart';
import 'package:addemployer/providers/listEmployer.dart';
import 'package:flutter/material.dart';

class ShowEmployer extends StatefulWidget {
  @override
  _ShowEmployerState createState() => _ShowEmployerState();
}

class _ShowEmployerState extends State<ShowEmployer> {
  final List<Employer> employer = [
    Employer(name: 'Ram', age: 25, marks: 500),
    Employer(name: 'Vinod', age: 30, marks: 550),
  ];

  void addEmployer(
      String saveDetailsName, int saveDetailsAge, int saveDetailsMarks) {
    final addEmp = Employer(
      name: saveDetailsName,
      age: saveDetailsAge,
      marks: saveDetailsMarks,
    );
    setState(() {
      employer.add(addEmp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CreateEmployer(addEmployer),
          ListEmployer(employer),
        ],
      ),
    );
  }
}
