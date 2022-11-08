import 'package:flutter/material.dart';

import '../../data/user_data.dart';
import '../../utils/constants.dart';
import '../../widgets/reels_comment_section.dart';
import '../../widgets/reels_stacked_widgets.dart';
import '../../widgets/reels_top_user_action.dart';

class RealContentTab extends StatelessWidget {
  RealContentTab({Key? key}) : super(key: key);

  final buildRealsVideoBackDrop = SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Image.network(
      errorBuilder: (context, _, st) {
        return Container(color: Colors.white);
      },
      userData.reels!.first.videoUrl,
      fit: BoxFit.cover,
    ),
  );

  final backArrowWidget = const Padding(
    padding: EdgeInsets.symmetric(
        vertical: defaultSpacer / 2, horizontal: defaultSpacer),
    child: Icon(
      Icons.arrow_back,
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildRealsVideoBackDrop,
        backArrowWidget,
        const Positioned(
          top: 40,
          right: 0,
          left: 0,
          child: ReelsTopUserActionWidget(),
        ),
        Positioned(
            right: 0,
            bottom: 20,
            child: ReelsStackWidget(
              likes: '${userData.reels!.first.likeCount}k',
              comments: '${userData.reels!.first.commentCount}k',
              shares: '${userData.reels!.first.shareCount}k',
            )),
        Positioned(
            bottom: 16,
            child: CommentSectionWidget(
              userName: userData.name,
              userPhotoUrl: userData.profilePhotoUrl,
            ))
      ],
    );
  }
}
