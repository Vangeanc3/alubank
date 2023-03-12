import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AccountAction extends StatelessWidget {
  const AccountAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text("Ações da conta"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionCardContent(
                    icon: Icon(Icons.account_balance_wallet),
                    text: "Depositar",
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionCardContent(
                    icon: Icon(Icons.cached),
                    text: "Transferir",
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(
                  boxContent: _AccountActionCardContent(
                    icon: Icon(Icons.center_focus_strong),
                    text: "Ler",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActionCardContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActionCardContent(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
