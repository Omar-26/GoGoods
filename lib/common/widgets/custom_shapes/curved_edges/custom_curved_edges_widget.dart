import 'package:flutter/material.dart';

import 'custom_curved_edges.dart';

class GCustomCurvedEdgesWidget extends StatelessWidget {
  const GCustomCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GCustomCurvedEdges(),
      child: child,
    );
  }
}
