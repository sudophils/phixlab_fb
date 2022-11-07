import 'package:flutter/material.dart';
import 'package:phixlab_fb/widgets/user_avatar_widget.dart';

import '../utils/constants.dart';

class ReelsTopUserActionWidget extends StatelessWidget {
  const ReelsTopUserActionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              margin: horizontalSpacing,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2, color: Colors.white)),
              child: const Center(
                child: Icon(
                  Icons.movie_filter,
                  size: 18,
                  color: Colors.orange,
                ),
              ),
            ),
            const Positioned(
                bottom: 0,
                right: 10,
                child: Icon(
                  Icons.add_circle,
                  color: Colors.white,
                  size: 19,
                ))
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: defaultSpacer),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSpacer),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              PhotoAvatarWidget(
                photoUrl:
                    'https://cdn.pixabay.com/photo/2022/04/29/14/28/woman-7163866__480.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
