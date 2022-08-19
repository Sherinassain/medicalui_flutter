import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Category_container extends StatelessWidget {
  final String iconpath;
  final String textpath;
  const Category_container({Key? key, required this.iconpath, required this.textpath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 160,
        decoration: BoxDecoration(color: Colors.deepPurple[100],borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Image.asset(
                iconpath,
                height: 50,
              ),
              SizedBox(width: 8,),
              Text(textpath),
            ],
          ),
        ),
      ),
    );
  }
}
