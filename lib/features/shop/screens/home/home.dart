import 'package:GoGoods/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_body.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        /// --AppBar
        headerSliverBuilder: (context, _) => [const GHomeAppBar()],
        /// --Body
        body: const GHomeBody(),
      ),
    );
  }
}