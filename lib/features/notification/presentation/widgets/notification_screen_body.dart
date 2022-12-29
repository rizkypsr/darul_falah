import 'package:chips_choice/chips_choice.dart';
import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:flutter/material.dart';

class NotificationScreenBody extends StatefulWidget {
  const NotificationScreenBody({super.key});

  @override
  State<NotificationScreenBody> createState() => _NotificationScreenBodyState();
}

class _NotificationScreenBodyState extends State<NotificationScreenBody> {
  int tag = 0;
  List<String> options = ['Semua'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChipsChoice<int>.single(
          value: tag,
          choiceStyle: C2ChipStyle.filled(
            color: Colors.grey,
            foregroundColor: violet[900],
            selectedStyle: C2ChipStyle(
              backgroundColor: violet[900],
              foregroundColor: Colors.white,
            ),
          ),
          onChanged: (val) => setState(() => tag = val),
          choiceItems: C2Choice.listFrom<int, String>(
            source: options,
            value: (i, v) => i,
            label: (i, v) => v,
          ),
        ),
        const SizedBox(
          height: basePadding,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(basePadding),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: basePadding),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: violet[900]!))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                        child: Image.network(
                      "https://via.placeholder.com/150",
                      fit: BoxFit.cover,
                    )),
                    const SizedBox(height: basePadding,),
                    Text("15 Juli", style: textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
