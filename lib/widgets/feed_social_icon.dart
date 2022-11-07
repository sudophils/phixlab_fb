
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SocialActionWidget extends StatelessWidget {
  final IconData icon;
  final String? label;

  const SocialActionWidget({Key? key, required this.icon, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: label != null ? defaultSpacer : defaultSpacer / 2),
      child: Row(
        children: [
          Icon(icon, color: Colors.black38, size: 16,),
          const SizedBox(
            width: defaultSpacer / 4,
          ),
          label != null
              ? Text(label ?? "", style: const TextStyle(color: Colors.black38, fontSize: 11))
              : const Offstage()
        ],
      ),
    );
  }
}
