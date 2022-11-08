import 'package:flutter/material.dart';
import 'package:phixlab_fb/widgets/user_avatar_widget.dart';

import '../utils/constants.dart';

class CommentSectionWidget extends StatelessWidget {
  final String userName;
  final String userPhotoUrl;

  const CommentSectionWidget(
      {Key? key, required this.userName, required this.userPhotoUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        padding: const EdgeInsets.symmetric(horizontal: defaultSpacer),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  radius: 18,
                  child: PhotoAvatarWidget(
                    photoUrl: userPhotoUrl,
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
                        "$userName .  ",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("followed $userName");
                        },
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const SizedBox(
                    height: 20,
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                          isDense: true,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 1.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintText: "Add a comment..."),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
