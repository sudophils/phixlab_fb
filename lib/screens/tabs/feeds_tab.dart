import 'package:flutter/material.dart';
import 'package:phixlab_fb/data/user_data.dart';
import 'package:phixlab_fb/utils/constants.dart';
import 'package:unicons/unicons.dart';

import '../../widgets/post_card.dart';
import '../../widgets/user_avatar_widget.dart';

class FeedContentTab extends StatelessWidget {
  const FeedContentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          spaceWidget(isFullSpace: true, isVerticalSpace: true),
          Row(
            children: [
              spaceWidget(isFullSpace: true, isVerticalSpace: false),
              PhotoAvatarWidget(
                width: 30,
                height: 30,
                photoUrl: userData.profilePhotoUrl,
              ),
              spaceWidget(isFullSpace: true, isVerticalSpace: false),
              const Expanded(
                child: SizedBox(
                  height: 34,
                  child: TextField(
                    style: TextStyle(fontSize: 11),
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.photo_library,
                          color: Colors.green,
                        ),
                        isDense: true,
                        hintStyle:
                            TextStyle(color: Colors.black54, fontSize: 10),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
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
                  UniconsLine.facebook_messenger,
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
                ...?userData.stories?.map((story) {
                  return Padding(
                    padding: const EdgeInsets.only(right: defaultSpacer / 2),
                    child: StoryAvatarWidget(
                      profilePhotoUrl: story.profilePhotoUrl,
                      viewed: story.viewed,
                      height: 55,
                      width: 55,
                      storyphotoUrl: story.storyPhoto,
                    ),
                  );
                }),
                spaceWidget(isFullSpace: false, isVerticalSpace: false),
              ],
            ),
          ),
          spaceWidget(isFullSpace: true, isVerticalSpace: true),
          Container(
            height: .2,
            color: Colors.black26,
          ),
          spaceWidget(isFullSpace: true, isVerticalSpace: true),

          /// get all posts
          ...?userData.posts?.map((post) => PostCard(
                authorName: "${post.authorName}.  ",
                authorAvatar: post.authorAvatar,
                postPhoto: post.postPhoto,
              ))
        ],
      ),
    );
  }
}
