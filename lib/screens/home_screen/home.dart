import 'package:alubank/components/box_card.dart';
import 'package:alubank/screens/home_screen/widgets/account_action.dart';
import 'package:alubank/screens/home_screen/widgets/header.dart';
import 'package:alubank/screens/home_screen/widgets/recent_active.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[Header(), RecentActive(), AccountAction()],
      ),
    );
  }
}
