import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/custom_curved_edges_widget.dart';
import 'circular_container.dart';

class GPrimaryHeaderContainer extends StatelessWidget {
  const GPrimaryHeaderContainer({
    super.key,
    required this.child,
    this.height,
  });

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GCustomCurvedEdgesWidget(
      child: SizedBox(
        height: height,
        child: Container(
          color: GColors.primary,
          child: Stack(
            children: [
              /// Background Custom Design
              // Above Circle
              Positioned(
                top: -150,
                right: -250,
                child: GCircularContainer(
                  width: 400,
                  height: 400,
                  radius: 400,
                  backgroundColor: GColors.textWhite.withOpacity(0.1),
                ),
              ),
              // Below Circle
              Positioned(
                top: 100,
                right: -300,
                child: GCircularContainer(
                  width: 400,
                  height: 400,
                  radius: 400,
                  backgroundColor: GColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
