import 'package:flutter/material.dart';
import 'package:phixlab_fb/widgets/user_avatar_widget.dart';
import 'package:unicons/unicons.dart';

import '../utils/constants.dart';
import 'feed_social_icon.dart';

class PostCard extends StatelessWidget {
  final String authorName;
  final String authorAvatar;
  final String postPhoto;
  final String? postLikes;
  final String? postComments;
  final String? postShares;

  const PostCard(
      {Key? key,
      required this.authorName,
      required this.authorAvatar,
      required this.postPhoto,
      this.postLikes,
      this.postComments,
      this.postShares})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultSpacer / 2),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            radius: 20,
                            child: PhotoAvatarWidget(
                              photoUrl: authorAvatar,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  authorName,
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  "Updated his profile",
                                  style: TextStyle(
                                      color: Colors.black26,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Picture 2h",
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.more_horiz,
                      color: Colors.black26,
                    ),
                    spaceWidget(isFullSpace: false, isVerticalSpace: true),
                    const Icon(
                      Icons.close,
                      color: Colors.black26,
                    )
                  ],
                ),
              ],
            ),
            spaceWidget(isFullSpace: true, isVerticalSpace: true),
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.network(
                errorBuilder: (context, _, st) {
                  return Container();
                },
                postPhoto,
                fit: BoxFit.cover,
              ),
            ),
            spaceWidget(isFullSpace: true, isVerticalSpace: true),
            Container(
              height: .168,
              color: Colors.black26,
            ),
            spaceWidget(isFullSpace: false, isVerticalSpace: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SocialActionWidget(
                  icon: UniconsLine.thumbs_up,
                  label: "${postLikes ?? '3'}  likes",
                ),
                SocialActionWidget(
                  icon: UniconsLine.comment_edit,
                  label: "${postComments ?? "40"} Comments",
                ),
                SocialActionWidget(
                  icon: UniconsLine.share,
                  label: "${postShares ?? "3"} shares",
                ),
              ],
            )
          ],
        ));
  }
}
