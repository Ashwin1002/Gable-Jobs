import 'package:flutter/material.dart';

void main() => runApp(AnimateCont());

class AnimateCont extends StatelessWidget {

  final shakeKey = GlobalKey<_ShakeWidgetState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          height: 480,
          width: 420,
          child: ShakeWidget(
            key: shakeKey,
            child: const Image(
              image: AssetImage(
                  'assets/images/verticalphone.png'),
              /*height: 420,
              width: 380,*/
            ),
          ),
        ),
      ),
    );
  }
}

class ShakeWidget extends StatefulWidget {
  const ShakeWidget({
    required Key key,
    this.duration = const Duration(milliseconds: 3000),
    this.deltaX = 20,
    this.curve = Curves.linear,
    required this.child,
  }) : super(key: key);

  final Duration duration;
  final double deltaX;
  final Widget child;
  final Curve curve;

  @override
  _ShakeWidgetState createState() => _ShakeWidgetState();
}

class _ShakeWidgetState extends State<ShakeWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (controller.isCompleted) {
          controller.repeat();
        }
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /// convert 0-1 to 0-1-0
  double shake(double value) =>
      2 * (0.5 - (0.5 - widget.curve.transform(value)).abs());

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => Transform.translate(
        offset: Offset(0, widget.deltaX * shake(controller.value)),
        child: child,
      ),
      child: widget.child,
    );
  }
}
