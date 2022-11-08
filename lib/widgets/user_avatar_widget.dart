import 'package:flutter/material.dart';

class PhotoAvatarWidget extends StatelessWidget {
  final String photoUrl;
  final double? height;
  final double? width;

  const PhotoAvatarWidget({
    Key? key,
    required this.photoUrl,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            errorBuilder: (context, _, st) {
              return const CircleAvatar(backgroundColor: Colors.white);
            },
            height: height ?? 40,
            width: width ?? 40,
            fit: BoxFit.cover,
            photoUrl,
          ),
        ),
      ],
    );
  }
}

class StoryAvatarWidget extends StatelessWidget {
  final String storyphotoUrl;
  final String profilePhotoUrl;
  final double height;
  final double width;
  final bool viewed;

  const StoryAvatarWidget(
      {Key? key,
      required this.storyphotoUrl,
      required this.height,
      required this.width,
      required this.viewed,
      required this.profilePhotoUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  color: Colors.blueAccent, width: viewed != true ? 3 : 0)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              errorBuilder: (context, _, st) {
                return const CircleAvatar(backgroundColor: Colors.white);
              },
              height: height,
              width: width,
              fit: BoxFit.cover,
              storyphotoUrl,
            ),
          ),
        ),
        // if (userData.isOnline!)
        Positioned(
          right: 4,
          bottom: 8,
          child: Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Colors.white, width: 1)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                errorBuilder: (context, _, st) {
                  return const CircleAvatar(backgroundColor: Colors.white);
                },
                height: 22,
                width: 22,
                fit: BoxFit.cover,
                profilePhotoUrl,
              ),
            ),
          ),
        )
      ],
    );
  }
}
