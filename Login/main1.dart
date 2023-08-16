import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Stack( alignment: Alignment.center,
     children: [
     Positioned(
         child: Container(
           height: 350,width: 200,
          alignment: Alignment.center,
           child: Image.asset("assets/cat2.png"),
         )
     )
     ],
   ),
    );
  }
}
