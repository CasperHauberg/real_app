import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();

    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) {
              //   titleInput = val;
              // },
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val) {
              //   amountInput = val;
              // },
              controller: amountController,
            ),
            FlatButton(
                child: Text(
                  'Add Transaction',
                ),
                textColor: Colors.purple,
                onPressed: () {
                  print(titleController.text);
                }),
          ],
        ),
      ),
    );
  }
}
