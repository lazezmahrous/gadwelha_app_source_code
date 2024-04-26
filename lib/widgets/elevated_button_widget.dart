// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gadwelha/constanc.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget(
      {super.key, required this.onPressed, required this.text});
  VoidCallback? onPressed;
  String? text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Constanc.kColor,
          ),
          foregroundColor: MaterialStatePropertyAll(Constanc.kColorWhite),
          fixedSize: const MaterialStatePropertyAll(
            Size(10, 45),
          ),
          // elevation: const MaterialStatePropertyAll(3),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(17),
              ),
              // side: BorderSide(
              //   color: Colors.black38,
              //   width: .5,
              //   strokeAlign: BorderSide.strokeAlignOutside,
              // ),
            ),
          )),
      onPressed: onPressed,
      child: Text(text!),
    );
  }
}
