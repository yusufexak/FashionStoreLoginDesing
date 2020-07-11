import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool visible;
  const AppTextField({
    Key key,
    this.title,
    this.hintText,
    this.visible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style:
                  Theme.of(context).textTheme.headline1.copyWith(fontSize: 16),
            ),
            Visibility(
              visible: visible,
              child: Container(
                width: 28,
                height: 28,
                child: Icon(
                  Icons.visibility,
                  size: 18,
                  color: Colors.grey.withOpacity(.7),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.grey.withOpacity(.7), width: 2)),
              ),
            ),
          ],
        ),
        TextField(
          decoration: InputDecoration(hintText: hintText),
        ),
      ],
    );
  }
}
