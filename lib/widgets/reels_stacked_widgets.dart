import 'package:flutter/material.dart';
import 'package:phixlab_fb/widgets/reels_floating_widget.dart';

import '../utils/constants.dart';

class ReelsStackWidget extends StatelessWidget {
  const ReelsStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildVerticalShareView(List<Widget> children) {
      return Container(
          margin: const EdgeInsets.only(right: defaultSpacer),
          width: 50,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: children,
          ));
    }

    return buildVerticalShareView([
      const FloatingWidget(
        icon: Icons.thumb_up_sharp,
        label: "55k",
      ),
      const FloatingWidget(
        icon: Icons.comment_bank,
        label: "15k",
      ),
      const FloatingWidget(
        icon: Icons.ios_share,
        label: "2.6k",
      ),
      const FloatingWidget(icon: Icons.more_horiz),
      const FloatingWidget(icon: Icons.person),
    ]);
  }
}
