import 'package:flutter/material.dart';

class CustomAppBarRightIcon extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final IconData rightIcon;
  final VoidCallback? onRightTap;
  final VoidCallback? onBack;

  const CustomAppBarRightIcon({
    super.key,
    required this.title,
    required this.rightIcon,
    this.onRightTap,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.1),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: onBack != null
            ? IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: onBack,
              )
            : null,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              rightIcon,
              color: Colors.black,
              size: 22,
            ),
            onPressed: onRightTap,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
