import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromRGBO(103, 99, 234, 1),
            Color.fromRGBO(155, 105, 254, 1),
            Color.fromRGBO(195, 107, 255, 1)
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: "\$",
                    style: TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: "1000.0",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Balanço disponivel",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 35,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
