import 'package:chips_choice/chips_choice.dart';
import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/presentation/widgets/custom_text_field.dart';
import 'package:darul_falah/core/styles/text_theme.dart';
import 'package:darul_falah/features/chat/widgets/chat_item.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  int tag = 1;
  List<String> options = ['Personal', 'Topik Populer'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(basePadding),
              child: CustomTextField(
                hint: "Cari percakapan",
                textInputAction: TextInputAction.search,
                hintStyle: textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: violet[400],
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: violet[900]!, width: 2),
                ),
              ),
            ),
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
            Expanded(
              child: ListView(
                children: const [
                  ChatItem(
                    name: "Fashion & Kecantikan",
                    message: "Hai Hai",
                    image: "fashion.jpg",
                  ),
                  ChatItem(
                    name: "Mulai Bisnis Baru",
                    message: "Terima kasih kak",
                    image: "article.jpg",
                  ),
                  ChatItem(
                    name: "Makanan & Minuman",
                    message: "Pesan ini telah dihapus",
                    image: "food.jpg",
                  ),
                  ChatItem(
                    name: "Suryadi Setyo",
                    message: "Bisnis",
                    image: "man.jpg",
                  ),
                  ChatItem(
                    name: "Media Sosial",
                    message: "Modal kecil untungnya banyak apa",
                    image: "ms.jpg",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
