import 'package:flutter/material.dart';

const defaultSpacer = 16.0;
const defaultRadius = 12.0;
const appBackgroundColor = Colors.white;
const verticalSpacing = EdgeInsets.symmetric(vertical: defaultSpacer);
const horizontalSpacing = EdgeInsets.symmetric(horizontal: defaultSpacer);

Widget spaceWidget(
    {required bool isFullSpace, required bool isVerticalSpace}) {
  if (!isVerticalSpace) {
    return SizedBox(
      width: isFullSpace ? defaultSpacer : defaultSpacer / 2,
    );
  }
  return SizedBox(
    height: isFullSpace ? defaultSpacer : defaultSpacer / 2,
  );
}
