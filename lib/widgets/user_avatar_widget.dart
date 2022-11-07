import 'package:flutter/material.dart';

class PhotoAvatarWidget extends StatelessWidget {
  final String photoUrl;
  final double? height;
  final double? width;

  const PhotoAvatarWidget(
      {Key? key, required this.photoUrl, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
