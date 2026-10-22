import 'package:epic_story_app/core/styles/epic_app_size.dart';
import 'package:flutter/material.dart';

double _s(double value) => EpicAppSize.calculatedSize(value);

class CollectionTopSection extends StatelessWidget {
  const CollectionTopSection({
    super.key,
    required this.title,
    this.onBackTap,
    this.leftIconAssetPath = 'assets/images/book-stack2.png',
    this.mascotAssetPath = 'assets/images/icon-top-bar.png',
    this.yellowButtonAssetPath = 'assets/images/yellow-button.png',
    this.yellowButtonText = 'Book',
    this.titleTextSize = 37,
    this.yellowButtonTextSize = 34,
    this.yellowButtonWidth = 150,
    this.yellowButtonHeight = 52,
    this.leftIconMinSize = 84,
    this.leftIconMaxSize = 110,
    this.leftIconWidthFactor = 0.35,
    this.mascotMinSize = 116,
    this.mascotMaxSize = 156,
    this.mascotWidthFactor = 0.34,
    this.horizontalPadding = 12,
    this.topPadding = 4,
    this.titleTopSpacing = 15,
    this.rowSpacing = 10,
    this.backIconSize = 32,
    this.backgroundColors = const [
      Color(0xFF7E32AB),
      Color(0xFFC8B1EA),
    ],
  });

  final String title;
  final VoidCallback? onBackTap;
  final String leftIconAssetPath;
  final String mascotAssetPath;

  final String yellowButtonAssetPath;
  final String yellowButtonText;
  final double yellowButtonWidth;
  final double yellowButtonHeight;
  final double yellowButtonTextSize;

  final double titleTextSize;
  final double leftIconMinSize;
  final double leftIconMaxSize;
  final double leftIconWidthFactor;
  final double mascotMinSize;
  final double mascotMaxSize;
  final double mascotWidthFactor;
  final double horizontalPadding;
  final double topPadding;
  final double titleTopSpacing;
  final double rowSpacing;
  final double backIconSize;
  final List<Color> backgroundColors;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final mascotSize = (constraints.maxWidth * mascotWidthFactor)
            .clamp(_s(mascotMinSize), _s(mascotMaxSize));
        final leftIconSize = (constraints.maxWidth * leftIconWidthFactor)
            .clamp(_s(leftIconMinSize), _s(leftIconMaxSize));
        final reservedRight = mascotSize + _s(10);

        return Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(
              _s(horizontalPadding), _s(topPadding), _s(horizontalPadding), 0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: backgroundColors,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  mascotAssetPath,
                  width: mascotSize,
                  height: mascotSize,
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: _s(titleTopSpacing)),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: onBackTap,
                        child: Padding(
                          padding: EdgeInsets.only(right: _s(6)),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: _s(backIconSize),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: reservedRight),
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _s(titleTextSize),
                              fontWeight: FontWeight.w900,
                              height: 1,
                              shadows: [
                                Shadow(
                                  color: const Color(0x66000000),
                                  offset: Offset(0, _s(2)),
                                  blurRadius: _s(3),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: _s(rowSpacing)),
                  Padding(
                    padding: EdgeInsets.only(right: reservedRight),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          leftIconAssetPath,
                          width: leftIconSize,
                          height: leftIconSize,
                        ),
                        SizedBox(width: _s(10)),
                        SizedBox(
                          height: _s(yellowButtonHeight),
                          width: _s(yellowButtonWidth),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned.fill(
                                child: Image.asset(
                                  yellowButtonAssetPath,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                yellowButtonText,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _s(yellowButtonTextSize),
                                  fontWeight: FontWeight.w900,
                                  shadows: [
                                    Shadow(
                                      color: const Color(0x66000000),
                                      offset: Offset(0, _s(1)),
                                      blurRadius: _s(2),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
