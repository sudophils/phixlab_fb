import 'package:flutter/material.dart';
import 'package:phixlab_fb/widgets/reels_floating_widget.dart';
import 'package:unicons/unicons.dart';

import '../utils/constants.dart';

class ReelsStackWidget extends StatelessWidget {
  final String likes;
  final String comments;
  final String shares;

  const ReelsStackWidget(
      {Key? key,
      required this.likes,
      required this.comments,
      required this.shares})
      : super(key: key);

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
      FloatingWidget(
        icon: UniconsLine.thumbs_up,
        label: likes,
      ),
      FloatingWidget(
        icon: UniconsLine.comment,
        label: comments,
      ),
      FloatingWidget(
        icon: UniconsLine.share,
        label: shares,
      ),
      const FloatingWidget(icon: Icons.more_horiz),
      const FloatingWidget(icon: Icons.person),
    ]);
  }
}
