import 'package:flutter/material.dart';
import 'package:phixlab_fb/utils/constants.dart';

import '../../widgets/feed_social_icon.dart';
import '../../widgets/user_avatar_widget.dart';

class FeedContentTab extends StatelessWidget {
  const FeedContentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            spaceWidget(isFullSpace: true, isVerticalSpace: true),
            Row(
              children: [
                spaceWidget(isFullSpace: true, isVerticalSpace: false),
                const PhotoAvatarWidget(
                  width: 30,
                  height: 30,
                  photoUrl:
                      'https://cdn.pixabay.com/photo/2022/04/29/14/28/woman-7163866__480.jpg',
                ),
                spaceWidget(isFullSpace: true, isVerticalSpace: false),
                const Expanded(
                  child: SizedBox(
                    height: 34,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.photo_library,
                            color: Colors.green,
                          ),
                          isDense: true,
                          hintStyle:
                              TextStyle(color: Colors.black54, fontSize: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black12,
                                  style: BorderStyle.solid,
                                  width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintText: "Whats on your mind?"),
                    ),
                  ),
                ),
                spaceWidget(isFullSpace: true, isVerticalSpace: false),
                const Padding(
                  padding: EdgeInsets.only(right: defaultSpacer),
                  child: Icon(
                    Icons.message,
                    color: Colors.blueAccent,
                  ),
                )
              ],
            ),
            spaceWidget(isFullSpace: true, isVerticalSpace: true),
            Container(
              height: .168,
              color: Colors.black26,
            ),
            spaceWidget(isFullSpace: true, isVerticalSpace: true),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  spaceWidget(isFullSpace: true, isVerticalSpace: false),
                  const PhotoAvatarWidget(
                    height: 55,
                    width: 55,
                    photoUrl:
                        'https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907__340.jpg',
                  ),
                  spaceWidget(isFullSpace: false, isVerticalSpace: false),
                  const PhotoAvatarWidget(
                    height: 55,
                    width: 55,
                    photoUrl:
                        'https://cdn.pixabay.com/photo/2016/08/01/20/15/girl-1562025__340.jpg',
                  ),
                  spaceWidget(isFullSpace: false, isVerticalSpace: false),
                  const PhotoAvatarWidget(
                    height: 55,
                    width: 55,
                    photoUrl:
                        'https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761__340.jpg',
                  ),
                  spaceWidget(isFullSpace: false, isVerticalSpace: false),
                  const PhotoAvatarWidget(
                    height: 55,
                    width: 55,
                    photoUrl:
                        'https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947__340.jpg',
                  ),
                  spaceWidget(isFullSpace: false, isVerticalSpace: false),
                  const PhotoAvatarWidget(
                    height: 55,
                    width: 55,
                    photoUrl:
                        'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100__340.jpg',
                  ),
                ],
              ),
            ),
            spaceWidget(isFullSpace: true, isVerticalSpace: true),
            Container(
              height: .2,
              color: Colors.black26,
            ),
            spaceWidget(isFullSpace: true, isVerticalSpace: true),
            const PostCard(
              username: "denis roy.  ",
              profilePhoto:
                  'https://cdn.pixabay.com/photo/2016/11/21/15/38/beach-1846009__340.jpg',
              postPhoto:
                  "https://cdn.pixabay.com/photo/2016/11/29/05/55/adult-1867665__340.jpg",
            ),
            const PostCard(
              username: "phil olive.  ",
              profilePhoto:
                  'https://cdn.pixabay.com/photo/2022/04/29/14/28/woman-7163866__480.jpg',
              postPhoto:
                  "https://cdn.pixabay.com/photo/2018/01/09/06/43/sea-3070982__340.jpg",
            ),
            const PostCard(
              username: "Jim Glover.  ",
              profilePhoto:
              'https://cdn.pixabay.com/photo/2017/09/06/18/22/island-2722471__340.jpg',
              postPhoto:
              "https://cdn.pixabay.com/photo/2016/09/25/18/26/a-couple-of-1694334__340.jpg",
            ),
            const PostCard(
              username: "denis roy.  ",
              profilePhoto:
              'https://cdn.pixabay.com/photo/2016/11/21/15/38/beach-1846009__340.jpg',
              postPhoto:
              "https://cdn.pixabay.com/photo/2016/11/19/12/21/man-1838991__340.jpg",
            ),
            const PostCard(
              username: "phil olive.  ",
              profilePhoto:
              'https://cdn.pixabay.com/photo/2022/04/29/14/28/woman-7163866__480.jpg',
              postPhoto:
              "https://cdn.pixabay.com/photo/2018/01/24/19/49/people-3104635__340.jpg",
            ),
            const PostCard(
              username: "phixlab.  ",
              profilePhoto:
              'https://cdn.pixabay.com/photo/2017/09/06/18/22/island-2722471__340.jpg',
              postPhoto:
              "https://cdn.pixabay.com/photo/2014/11/17/20/55/girl-535251__340.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String username;
  final String profilePhoto;
  final String postPhoto;
  final String? postLikes;
  final String? postComments;
  final String? postShares;

  const PostCard(
      {Key? key,
      required this.username,
      required this.profilePhoto,
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
                              photoUrl: profilePhoto,
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
                                  username,
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
                  icon: Icons.thumb_up_off_alt,
                  label: "${postLikes ?? '3'}  likes",
                ),
                SocialActionWidget(
                  icon: Icons.comment,
                  label: "${postComments ?? "40"} Comments",
                ),
                SocialActionWidget(
                  icon: Icons.ios_share_outlined,
                  label: "${postShares ?? "3"} shares",
                ),
              ],
            )
          ],
        ));
  }
}
