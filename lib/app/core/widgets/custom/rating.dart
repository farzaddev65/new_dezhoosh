import 'package:bestdroid/app/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

class AppRatingWidget extends StatefulWidget {
  const AppRatingWidget({
    required this.rate,
    this.starSize,
    this.defaultRate,
    this.isChangeable,
    this.showLabel,
    super.key,
  });

  final Function(int score) rate;
  final double? starSize;
  final double? defaultRate;
  final bool? isChangeable;
  final bool? showLabel;

  @override
  AppRatingWidgetState createState() => AppRatingWidgetState();
}

class AppRatingWidgetState extends State<AppRatingWidget> with SingleTickerProviderStateMixin {
  double _rating = 0;
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
   List<int> list=[1,2,3,4,5,];

  @override
  void initState() {
    super.initState();
    _rating = widget.defaultRate ?? 0;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.8, end: .9).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.showLabel ?? false) Text('($_rating)').labelMedium(),

        Row(
          children: list.asMap().entries.map((entry) {
            final index = entry.key;
            final bool isRated = _rating > index;
            return GestureDetector(
              onTap: () => setState(() {
                _rating=index+1;
              }),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Opacity(
                  opacity: isRated ? _opacityAnimation.value : 1.0,
                  child: Icon(
                    Icons.star,
                    color: isRated ? Colors.amber : Colors.grey[400],
                    size: widget.starSize ?? 24, // Fixed size, animation handled by ScaleTransition
                  ),
                ),
              ),
            );
          }).toList(),
        ).ltr(),

      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
