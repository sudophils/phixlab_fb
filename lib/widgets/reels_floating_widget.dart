import 'package:flutter/material.dart';

import '../utils/constants.dart';

class FloatingWidget extends StatelessWidget {
  final IconData icon;
  final String? label;

  const FloatingWidget({Key? key, required this.icon, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: label != null ? defaultSpacer : defaultSpacer / 2),
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(
            height: defaultSpacer / 2,
          ),
          label != null
              ? Text(label ?? "", style: const TextStyle(color: Colors.white))
              : const Offstage()
        ],
      ),
    );
  }
}

