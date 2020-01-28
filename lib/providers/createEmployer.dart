import 'package:flutter/material.dart';

class CreateEmployer extends StatelessWidget {
  final Function saveDetails;
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final marksController = TextEditingController();

  CreateEmployer(this.saveDetails);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              controller: nameController,
            ),
            new TextField(
              decoration: InputDecoration(
                labelText: 'Age',
              ),
              controller: ageController,
            ),
            new TextField(
              decoration: InputDecoration(
                labelText: 'Marks',
              ),
              controller: marksController,
            ),
            new Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Save'),
                  onPressed: () {
                    saveDetails(
                        nameController.text,
                        int.parse(ageController.text.toString()),
                        int.parse(marksController.text.toString()));
                    print(nameController.text);
                    print(ageController.text);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
