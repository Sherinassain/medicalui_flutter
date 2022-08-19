import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Doctor_deatils extends StatelessWidget {
  final String doctorname;
  final String starrating;
  final String profession;
  final String experience;
  final String imagepaths;

  const Doctor_deatils({
    Key? key,
    required this.imagepaths, required this.starrating, required this.doctorname, required this.experience, required this.profession
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25, left: 10, right: 10, top: 5),
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imagepaths,
                  height: 60,
                )),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[300],
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                 starrating,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Column(
              children: [
                Text(
                 doctorname,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  profession,
                  style: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  experience,
                  style: TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
