import 'package:flutter/material.dart';
import 'package:universal_ecommerce_ui/import.dart';

class ClippedBlock extends StatelessWidget {
  const ClippedBlock({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  static const double decorHeight = 40;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: child,
        ),
        Positioned(
          bottom: -1,
          left: 0,
          right: 0,
          child: ClipPath(
            clipper: _OvalClipper(),
            child: Container(
              height: decorHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35.0.w),
                  topLeft: Radius.circular(35.0.w),
                ),
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:
                        Theme.of(context).buttonTheme.colorScheme!.background,
                  ),
                  width: 58.0.w,
                  height: 5.0.w,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    double roundHeight = 6;
    double radius = ClippedBlock.decorHeight;
    final path = Path();

    path.moveTo(radius - roundHeight / 2, roundHeight);
    path.quadraticBezierTo(size.width / 4, 0, size.width / 2, 0);
    path.quadraticBezierTo(size.width - size.width / 4 - roundHeight, 0,
        size.width - radius + roundHeight / 2, roundHeight);
    path.arcToPoint(Offset(w, radius), radius: Radius.circular(radius));
    path.lineTo(radius, h);
    path.lineTo(0, w - radius);
    path.lineTo(0, radius);

    path.arcToPoint(Offset(radius, roundHeight),
        radius: Radius.circular(radius));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
