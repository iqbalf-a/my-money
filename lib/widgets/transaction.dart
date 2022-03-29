import 'package:flutter/material.dart';
import 'package:my_money/theme.dart';

// ignore: must_be_immutable
class Transaction extends StatelessWidget {
  // const Transation({ Key? key }) : super(key: key);
  String? img;
  String label, date, value;
  Transaction(
      {required this.img,
      required this.label,
      required this.date,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: img!.isNotEmpty ? Image.asset('images/$img') : Container(),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$label',
                  style: m12,
                ),
                Text(
                  '$date',
                  style: l12,
                ),
              ],
            ),
            Spacer(),
            Text(
              '$value',
              style: m12,
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          thickness: 1,
          indent: 30,
          endIndent: 30,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
