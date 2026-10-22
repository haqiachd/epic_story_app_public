import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  final List<Widget>? actions;
  final VoidCallback? onBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.icon = Icons.home_rounded,
    this.actions,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      shadowColor: Colors.black,
      child: AppBar(
        elevation: 0, // matiin shadow bawaan AppBar
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
        titleSpacing: onBack != null ? 0 : 16,
        title: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 22,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
