import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_ui/components/filled_outline_button.dart';
import 'package:messanger_ui/constants.dart';
import 'package:messanger_ui/models/Chat.dart';
import 'package:messanger_ui/screens/chats/chart_card.dart';
import 'package:messanger_ui/screens/messages/messages_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            kDefaultPadding,
            0,
            kDefaultPadding,
            kDefaultPadding,
          ),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent message"),
              const SizedBox(width: kDefaultPadding),
              FillOutlineButton(press: () {}, text: "Active", isFilled: false),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const MessagesScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
