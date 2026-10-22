import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// FontSizeOption - predefined font size options used by [AppSize.getSize].
enum FontSizeOption {
  xxSmall,
  xSmall,
  small,
  mediumSmall,
  regular,
  medium,
  large,
  xl,
  xl2,
  xl3,
  xl4,
  xl5,
  xl6,
  xl7,
  xl8,
  xl9,
  xl10,
  xl11,
  xl12,
}

/// AppSize - A single utility class consolidating responsive UI sizing for the
/// application: border radius, font sizes, margins, paddings and spacing.
///
/// All values are responsive using `flutter_screenutil` (`.r`, `.w`, `.h`, `.sp`).
///
/// This class merges the previously separate `BorderSize`, `FontSize`,
/// `MarginSize`, `PaddingSize` and `SpacingSize` utilities.
class AppSize {
  AppSize._();

  // ==========================================================================
  // BORDER RADIUS
  // ==========================================================================
  static final BorderRadius radiusXS = BorderRadius.circular(2.0.r); // Extra Small
  static final BorderRadius radiusS = BorderRadius.circular(4.0.r); // Small
  static final BorderRadius radiusM = BorderRadius.circular(6.0.r); // Medium
  static final BorderRadius radiusL = BorderRadius.circular(8.0.r); // Large
  static final BorderRadius radiusXL = BorderRadius.circular(10.0.r); // Extra Large
  static final BorderRadius radius2XL = BorderRadius.circular(12.0.r);
  static final BorderRadius radius3XL = BorderRadius.circular(16.0.r);
  static final BorderRadius radius4XL = BorderRadius.circular(20.0.r);
  static final BorderRadius radius5XL = BorderRadius.circular(24.0.r);
  static final BorderRadius radius6XL = BorderRadius.circular(28.0.r);

  /// Custom border radius for specific needs.
  static BorderRadius custom(double radius) {
    return BorderRadius.circular(radius.r);
  }

  // ==========================================================================
  // FONT SIZE
  // ==========================================================================
  static double getSize(FontSizeOption option) {
    switch (option) {
      case FontSizeOption.xxSmall:
        return 8.0.sp;
      case FontSizeOption.xSmall:
        return 9.0.sp;
      case FontSizeOption.small:
        return 10.0.sp;
      case FontSizeOption.mediumSmall:
        return 12.0.sp;
      case FontSizeOption.regular:
        return 14.0.sp;
      case FontSizeOption.medium:
        return 16.0.sp;
      case FontSizeOption.large:
        return 18.0.sp;
      case FontSizeOption.xl:
        return 20.0.sp;
      case FontSizeOption.xl2:
        return 22.0.sp;
      case FontSizeOption.xl3:
        return 24.0.sp;
      case FontSizeOption.xl4:
        return 28.0.sp;
      case FontSizeOption.xl5:
        return 32.0.sp;
      case FontSizeOption.xl6:
        return 36.0.sp;
      case FontSizeOption.xl7:
        return 40.0.sp;
      case FontSizeOption.xl8:
        return 48.0.sp;
      case FontSizeOption.xl9:
        return 56.0.sp;
      case FontSizeOption.xl10:
        return 64.0.sp;
      case FontSizeOption.xl11:
        return 72.0.sp;
      case FontSizeOption.xl12:
        return 80.0.sp;
    }
  }

  /// Custom font size scaled using `flutter_screenutil`.
  static double customFontSize(double size) {
    return size.sp;
  }

  // ==========================================================================
  // MARGIN
  // ==========================================================================
  // All-Side Margin
  static final EdgeInsets margin2XS = EdgeInsets.all(2.0.w);
  static final EdgeInsets marginXS = EdgeInsets.all(4.0.w);
  static final EdgeInsets marginS = EdgeInsets.all(8.0.w);
  static final EdgeInsets marginM = EdgeInsets.all(12.0.w);
  static final EdgeInsets marginL = EdgeInsets.all(16.0.w);
  static final EdgeInsets marginXL = EdgeInsets.all(24.0.w);
  static final EdgeInsets margin2XL = EdgeInsets.all(32.0.w);
  static final EdgeInsets margin3XL = EdgeInsets.all(40.0.w);
  static final EdgeInsets margin4XL = EdgeInsets.all(48.0.w);
  static final EdgeInsets margin5XL = EdgeInsets.all(56.0.w);
  static final EdgeInsets margin6XL = EdgeInsets.all(64.0.w);
  static final EdgeInsets margin7XL = EdgeInsets.all(72.0.w);
  static final EdgeInsets margin8XL = EdgeInsets.all(80.0.w);
  static final EdgeInsets margin9XL = EdgeInsets.all(88.0.w);
  static final EdgeInsets margin10XL = EdgeInsets.all(96.0.w);
  static final EdgeInsets margin11XL = EdgeInsets.all(104.0.w);
  static final EdgeInsets margin12XL = EdgeInsets.all(112.0.w);

  // Horizontal Margin
  static final EdgeInsets marginHorizontal2XS = EdgeInsets.symmetric(horizontal: 2.0.w);
  static final EdgeInsets marginHorizontalXS = EdgeInsets.symmetric(horizontal: 4.0.w);
  static final EdgeInsets marginHorizontalS = EdgeInsets.symmetric(horizontal: 8.0.w);
  static final EdgeInsets marginHorizontalM = EdgeInsets.symmetric(horizontal: 12.0.w);
  static final EdgeInsets marginHorizontalL = EdgeInsets.symmetric(horizontal: 16.0.w);
  static final EdgeInsets marginHorizontalXL = EdgeInsets.symmetric(horizontal: 24.0.w);
  static final EdgeInsets marginHorizontal2XL = EdgeInsets.symmetric(horizontal: 32.0.w);
  static final EdgeInsets marginHorizontal3XL = EdgeInsets.symmetric(horizontal: 40.0.w);
  static final EdgeInsets marginHorizontal4XL = EdgeInsets.symmetric(horizontal: 48.0.w);
  static final EdgeInsets marginHorizontal5XL = EdgeInsets.symmetric(horizontal: 56.0.w);
  static final EdgeInsets marginHorizontal6XL = EdgeInsets.symmetric(horizontal: 64.0.w);
  static final EdgeInsets marginHorizontal7XL = EdgeInsets.symmetric(horizontal: 72.0.w);
  static final EdgeInsets marginHorizontal8XL = EdgeInsets.symmetric(horizontal: 80.0.w);
  static final EdgeInsets marginHorizontal9XL = EdgeInsets.symmetric(horizontal: 88.0.w);
  static final EdgeInsets marginHorizontal10XL = EdgeInsets.symmetric(horizontal: 96.0.w);
  static final EdgeInsets marginHorizontal11XL = EdgeInsets.symmetric(horizontal: 104.0.w);
  static final EdgeInsets marginHorizontal12XL = EdgeInsets.symmetric(horizontal: 112.0.w);

  // Vertical Margin
  static final EdgeInsets marginVertical2XS = EdgeInsets.symmetric(vertical: 2.0.h);
  static final EdgeInsets marginVerticalXS = EdgeInsets.symmetric(vertical: 4.0.h);
  static final EdgeInsets marginVerticalS = EdgeInsets.symmetric(vertical: 8.0.h);
  static final EdgeInsets marginVerticalM = EdgeInsets.symmetric(vertical: 12.0.h);
  static final EdgeInsets marginVerticalL = EdgeInsets.symmetric(vertical: 16.0.h);
  static final EdgeInsets marginVerticalXL = EdgeInsets.symmetric(vertical: 24.0.h);
  static final EdgeInsets marginVertical2XL = EdgeInsets.symmetric(vertical: 32.0.h);
  static final EdgeInsets marginVertical3XL = EdgeInsets.symmetric(vertical: 40.0.h);
  static final EdgeInsets marginVertical4XL = EdgeInsets.symmetric(vertical: 48.0.h);
  static final EdgeInsets marginVertical5XL = EdgeInsets.symmetric(vertical: 56.0.h);
  static final EdgeInsets marginVertical6XL = EdgeInsets.symmetric(vertical: 64.0.h);
  static final EdgeInsets marginVertical7XL = EdgeInsets.symmetric(vertical: 72.0.h);
  static final EdgeInsets marginVertical8XL = EdgeInsets.symmetric(vertical: 80.0.h);
  static final EdgeInsets marginVertical9XL = EdgeInsets.symmetric(vertical: 88.0.h);
  static final EdgeInsets marginVertical10XL = EdgeInsets.symmetric(vertical: 96.0.h);
  static final EdgeInsets marginVertical11XL = EdgeInsets.symmetric(vertical: 104.0.h);
  static final EdgeInsets marginVertical12XL = EdgeInsets.symmetric(vertical: 112.0.h);

  /// Custom margin for specific needs.
  static EdgeInsets customMargin({double horizontal = 0.0, double vertical = 0.0}) {
    return EdgeInsets.symmetric(horizontal: horizontal.w, vertical: vertical.h);
  }

  // ==========================================================================
  // PADDING
  // ==========================================================================
  // All-Side Padding
  static final EdgeInsets padding2XS = EdgeInsets.all(2.w);
  static final EdgeInsets paddingXS = EdgeInsets.all(4.w);
  static final EdgeInsets paddingS = EdgeInsets.all(8.w);
  static final EdgeInsets paddingM = EdgeInsets.all(12.w);
  static final EdgeInsets paddingL = EdgeInsets.all(16.w);
  static final EdgeInsets paddingXL = EdgeInsets.all(24.w);
  static final EdgeInsets padding2XL = EdgeInsets.all(32.w);
  static final EdgeInsets padding3XL = EdgeInsets.all(40.w);
  static final EdgeInsets padding4XL = EdgeInsets.all(48.w);
  static final EdgeInsets padding5XL = EdgeInsets.all(56.w);
  static final EdgeInsets padding6XL = EdgeInsets.all(64.w);
  static final EdgeInsets padding7XL = EdgeInsets.all(72.w);
  static final EdgeInsets padding8XL = EdgeInsets.all(80.w);
  static final EdgeInsets padding9XL = EdgeInsets.all(88.w);
  static final EdgeInsets padding10XL = EdgeInsets.all(96.w);
  static final EdgeInsets padding11XL = EdgeInsets.all(104.w);
  static final EdgeInsets padding12XL = EdgeInsets.all(112.w);

  // Horizontal Padding
  static final EdgeInsets paddingHorizontal2XS = EdgeInsets.symmetric(horizontal: 2.w);
  static final EdgeInsets paddingHorizontalXS = EdgeInsets.symmetric(horizontal: 4.w);
  static final EdgeInsets paddingHorizontalS = EdgeInsets.symmetric(horizontal: 8.w);
  static final EdgeInsets paddingHorizontalM = EdgeInsets.symmetric(horizontal: 12.w);
  static final EdgeInsets paddingHorizontalL = EdgeInsets.symmetric(horizontal: 16.w);
  static final EdgeInsets paddingHorizontalXL = EdgeInsets.symmetric(horizontal: 24.w);
  static final EdgeInsets paddingHorizontal2XL = EdgeInsets.symmetric(horizontal: 32.w);
  static final EdgeInsets paddingHorizontal3XL = EdgeInsets.symmetric(horizontal: 40.w);
  static final EdgeInsets paddingHorizontal4XL = EdgeInsets.symmetric(horizontal: 48.w);
  static final EdgeInsets paddingHorizontal5XL = EdgeInsets.symmetric(horizontal: 56.w);
  static final EdgeInsets paddingHorizontal6XL = EdgeInsets.symmetric(horizontal: 64.w);
  static final EdgeInsets paddingHorizontal7XL = EdgeInsets.symmetric(horizontal: 72.w);
  static final EdgeInsets paddingHorizontal8XL = EdgeInsets.symmetric(horizontal: 80.w);
  static final EdgeInsets paddingHorizontal9XL = EdgeInsets.symmetric(horizontal: 88.w);
  static final EdgeInsets paddingHorizontal10XL = EdgeInsets.symmetric(horizontal: 96.w);
  static final EdgeInsets paddingHorizontal11XL = EdgeInsets.symmetric(horizontal: 104.w);
  static final EdgeInsets paddingHorizontal12XL = EdgeInsets.symmetric(horizontal: 112.w);

  // Vertical Padding
  static final EdgeInsets paddingVertical2XS = EdgeInsets.symmetric(vertical: 2.h);
  static final EdgeInsets paddingVerticalXS = EdgeInsets.symmetric(vertical: 4.h);
  static final EdgeInsets paddingVerticalS = EdgeInsets.symmetric(vertical: 8.h);
  static final EdgeInsets paddingVerticalM = EdgeInsets.symmetric(vertical: 12.h);
  static final EdgeInsets paddingVerticalL = EdgeInsets.symmetric(vertical: 16.h);
  static final EdgeInsets paddingVerticalXL = EdgeInsets.symmetric(vertical: 24.h);
  static final EdgeInsets paddingVertical2XL = EdgeInsets.symmetric(vertical: 32.h);
  static final EdgeInsets paddingVertical3XL = EdgeInsets.symmetric(vertical: 40.h);
  static final EdgeInsets paddingVertical4XL = EdgeInsets.symmetric(vertical: 48.h);
  static final EdgeInsets paddingVertical5XL = EdgeInsets.symmetric(vertical: 56.h);
  static final EdgeInsets paddingVertical6XL = EdgeInsets.symmetric(vertical: 64.h);
  static final EdgeInsets paddingVertical7XL = EdgeInsets.symmetric(vertical: 72.h);
  static final EdgeInsets paddingVertical8XL = EdgeInsets.symmetric(vertical: 80.h);
  static final EdgeInsets paddingVertical9XL = EdgeInsets.symmetric(vertical: 88.h);
  static final EdgeInsets paddingVertical10XL = EdgeInsets.symmetric(vertical: 96.h);
  static final EdgeInsets paddingVertical11XL = EdgeInsets.symmetric(vertical: 104.h);
  static final EdgeInsets paddingVertical12XL = EdgeInsets.symmetric(vertical: 112.h);

  /// Custom padding for specific needs.
  static EdgeInsets customPadding({double horizontal = 0.0, double vertical = 0.0}) {
    return EdgeInsets.symmetric(horizontal: horizontal.w, vertical: vertical.h);
  }

  // ==========================================================================
  // SPACING (SizedBox)
  // ==========================================================================
  // Width Spacing
  static SizedBox spacing2XSWidth() => SizedBox(width: 2.w);
  static SizedBox spacingXSWidth() => SizedBox(width: 4.w);
  static SizedBox spacingSWidth() => SizedBox(width: 8.w);
  static SizedBox spacingMWidth() => SizedBox(width: 12.w);
  static SizedBox spacingLWidth() => SizedBox(width: 16.w);
  static SizedBox spacingXLWidth() => SizedBox(width: 24.w);
  static SizedBox spacing2XLWidth() => SizedBox(width: 32.w);
  static SizedBox spacing3XLWidth() => SizedBox(width: 40.w);
  static SizedBox spacing4XLWidth() => SizedBox(width: 48.w);
  static SizedBox spacing5XLWidth() => SizedBox(width: 56.w);
  static SizedBox spacing6XLWidth() => SizedBox(width: 64.w);
  static SizedBox spacing7XLWidth() => SizedBox(width: 72.w);
  static SizedBox spacing8XLWidth() => SizedBox(width: 80.w);
  static SizedBox spacing9XLWidth() => SizedBox(width: 88.w);
  static SizedBox spacing10XLWidth() => SizedBox(width: 96.w);
  static SizedBox spacing11XLWidth() => SizedBox(width: 104.w);
  static SizedBox spacing12XLWidth() => SizedBox(width: 112.w);

  // Height Spacing
  static SizedBox spacing2XSHeight() => SizedBox(height: 2.h);
  static SizedBox spacingXSHeight() => SizedBox(height: 4.h);
  static SizedBox spacingSHeight() => SizedBox(height: 8.h);
  static SizedBox spacingMHeight() => SizedBox(height: 12.h);
  static SizedBox spacingLHeight() => SizedBox(height: 16.h);
  static SizedBox spacingXLHeight() => SizedBox(height: 24.h);
  static SizedBox spacing2XLHeight() => SizedBox(height: 32.h);
  static SizedBox spacing3XLHeight() => SizedBox(height: 40.h);
  static SizedBox spacing4XLHeight() => SizedBox(height: 48.h);
  static SizedBox spacing5XLHeight() => SizedBox(height: 56.h);
  static SizedBox spacing6XLHeight() => SizedBox(height: 64.h);
  static SizedBox spacing7XLHeight() => SizedBox(height: 72.h);
  static SizedBox spacing8XLHeight() => SizedBox(height: 80.h);
  static SizedBox spacing9XLHeight() => SizedBox(height: 88.h);
  static SizedBox spacing10XLHeight() => SizedBox(height: 96.h);
  static SizedBox spacing11XLHeight() => SizedBox(height: 104.h);
  static SizedBox spacing12XLHeight() => SizedBox(height: 112.h);
}
