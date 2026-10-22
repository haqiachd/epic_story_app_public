import 'dart:math';

import 'package:epic_story_app/core/styles/epic_box_colors.dart';
import 'package:epic_story_app/core/styles/epic_app_size.dart';
import 'package:epic_story_app/core/widgets/cards/box_shadow.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatefulWidget {
  const LoadingDialog({super.key});

  @override
  State<LoadingDialog> createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog>
    with TickerProviderStateMixin {
  late AnimationController _starController;
  late AnimationController _bounceController;
  late AnimationController _scaleController;
  late Animation<double> _starAnim;
  late Animation<double> _scaleAnim;
  late List<Animation<double>> _dotAnimations;

  @override
  void initState() {
    super.initState();

    _starController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat();

    _starAnim = Tween<double>(begin: 0.0, end: 2 * pi).animate(
      CurvedAnimation(parent: _starController, curve: Curves.linear),
    );

    _bounceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat();

    _dotAnimations = List.generate(3, (i) {
      return Tween<double>(begin: 0.0, end: -14.0).animate(
        CurvedAnimation(
          parent: _bounceController,
          curve: Interval(
            i * 0.18,
            0.55 + i * 0.18,
            curve: Curves.easeInOut,
          ),
        ),
      );
    });

    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..repeat(reverse: true);

    _scaleAnim = Tween<double>(begin: 1.0, end: 1.15).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _starController.dispose();
    _bounceController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = BoxColors.limePastel;
    final dotColors = [
      BoxColors.pinkPrimary.backgroundColor,
      BoxColors.tealPrimary.backgroundColor,
      BoxColors.purplePrimary.backgroundColor,
    ];

    return Stack(
      clipBehavior: Clip.none,
      children: [
        ShadowBox(
          width: EpicAppSize.screenWidth * 0.88,
          cardColor: bgColor,
          radius: EpicAppSize.radiusLarge,
          borderWidthRatio: EpicAppSize.borderWidthRatio,
          child: Column(
            children: [
              const SizedBox(height: 14),

              // Rotating star decorations row
              AnimatedBuilder(
                animation: _starAnim,
                builder: (_, __) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: _starAnim.value,
                      child: Text('⭐',
                          style: TextStyle(
                              fontSize: EpicAppSize.calculatedSize(20))),
                    ),
                    const SizedBox(width: 6),
                    Transform.rotate(
                      angle: -_starAnim.value * 0.7,
                      child: Text('🌟',
                          style: TextStyle(
                              fontSize: EpicAppSize.calculatedSize(28))),
                    ),
                    const SizedBox(width: 6),
                    Transform.rotate(
                      angle: _starAnim.value,
                      child: Text('⭐',
                          style: TextStyle(
                              fontSize: EpicAppSize.calculatedSize(20))),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Bouncing emoji mascot
              AnimatedBuilder(
                animation: _scaleAnim,
                builder: (_, __) => Transform.scale(
                  scale: _scaleAnim.value,
                  child: Text('🚀',
                      style: TextStyle(
                          fontSize: EpicAppSize.calculatedSize(44))),
                ),
              ),

              const SizedBox(height: 10),

              // Title
              Text(
                'Sebentar ya! 🎉',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w900,
                  height: 1.1,
                  fontSize: EpicAppSize.calculatedSize(26),
                  color: BoxColors.purplePrimary.textColor,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Lagi diproses nih... ✨',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                  fontSize: EpicAppSize.calculatedSize(15),
                  color: bgColor.textColor,
                ),
              ),

              const SizedBox(height: 20),

              // Bouncing dots loader
              AnimatedBuilder(
                animation: _bounceController,
                builder: (_, __) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (i) {
                    return Transform.translate(
                      offset: Offset(0, _dotAnimations[i].value),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: EpicAppSize.calculatedSize(5)),
                        width: EpicAppSize.calculatedSize(16),
                        height: EpicAppSize.calculatedSize(16),
                        decoration: BoxDecoration(
                          color: dotColors[i],
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.black.withOpacity(0.6), width: 2),
                          boxShadow: [
                            BoxShadow(
                              color: dotColors[i].withOpacity(0.5),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),

        // Close button
        // Positioned(
        //   right: 24,
        //   top: 12,
        //   child: GestureDetector(
        //     onTap: () => Navigator.of(context).pop(),
        //     child: Container(
        //       padding: const EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.white.withOpacity(0.7),
        //         shape: BoxShape.circle,
        //         border:
        //             Border.all(color: Colors.black.withOpacity(0.3), width: 1),
        //       ),
        //       child: const Icon(Icons.close, color: Colors.black54, size: 20),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
