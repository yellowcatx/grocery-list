import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ListTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const ListTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20.0, top: 30),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Color.fromRGBO(243, 211, 188, 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                taskName,
                style: TextStyle(
                  fontFamily: 'SpaceMono',
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                deleteFunction!(context);
              },
              icon: Icon(IconlyBroken.delete),
              color: Theme.of(context).colorScheme.primary,
              iconSize: 22,
            ),
          ],
        ),
      ),
    );
  }
}
