import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/content_division.dart';
import 'package:flutter/material.dart';
import 'package:alubank/components/color_dot.dart';

class RecentActive extends StatelessWidget {
  const RecentActive({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(14),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 4),
              child: ColorDot(
                color: Color.fromRGBO(255, 175, 29, 1),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saída"),
                    Text(
                      "\$9900.00",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 4),
              child: ColorDot(
                color: Color.fromRGBO(255, 175, 29, 1),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saída"),
                    Text(
                      "\$9900.00",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.only(top: 16, bottom: 8),
            child: Text("Limite de gastos: \$432.93")),
        LinearProgressIndicator(
          value: 0.4,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        Text(
            "Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!"),
        TextButton(
          onPressed: () {},
          child: Text("Diga-me como"),
        )
      ],
    );
  }
}
