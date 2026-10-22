import 'package:flutter/material.dart';

class StackedInfoTopBar extends StatelessWidget {
  const StackedInfoTopBar({
    super.key,
    required this.titleText,
    required this.infoText,
    required this.isBackButtonVisible,
    this.onBackTap,
    this.backIconAsset = 'assets/images/icon-back.png',
    this.infoLeadingAsset = 'assets/images/book-stack2.png',
    this.mascotAsset = 'assets/images/icon-top-bar.png',
    this.coinAsset = 'assets/images/coin-gancet.png',
  });

  final String titleText;
  final String infoText;
  final bool isBackButtonVisible;
  final VoidCallback? onBackTap;
  final String backIconAsset;
  final String infoLeadingAsset;
  final String mascotAsset;
  final String coinAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF7E32AB),
            Color(0xFFE0CEFF),
          ],
          stops: [0.0, 1.0],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 6),
          Row(
            children: [
              Visibility(
                visible: isBackButtonVisible,
                child: GestureDetector(
                  onTap: onBackTap,
                  child: Image.asset(
                    backIconAsset,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildOutlinedTitle(titleText),
              ),
              const SizedBox(width: 8),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 14),
                padding: const EdgeInsets.fromLTRB(14, 10, 110, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color(0xFF2C0B3A),
                      Color(0xFF7E32AB),
                    ],
                    stops: [0.1, 1.0],
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      infoLeadingAsset,
                      width: 34,
                      height: 34,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        infoText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                top: -50,
                child: Image.asset(
                  mascotAsset,
                  width: 94,
                  height: 154,
                ),
              ),
              Positioned(
                right: 90,
                top: -40,
                child: Image.asset(
                  coinAsset,
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOutlinedTitle(String text) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            height: 1,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..color = Colors.black.withOpacity(0.2),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            height: 1,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
