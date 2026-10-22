import 'package:flutter/material.dart';

class RewardPhotoViewerDialog extends StatefulWidget {
  const RewardPhotoViewerDialog({
    super.key,
    required this.imageUrls,
    required this.initialIndex,
    this.onDownload,
  });

  final List<String> imageUrls;
  final int initialIndex;
  final Future<void> Function(String imageUrl)? onDownload;

  @override
  State<RewardPhotoViewerDialog> createState() =>
      _RewardPhotoViewerDialogState();
}

class _RewardPhotoViewerDialogState extends State<RewardPhotoViewerDialog> {
  late final PageController _pageController;
  late final TransformationController _transformController;
  late int _currentPage;
  bool _isDownloading = false;
  bool _isZoomed = false;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
    _transformController = TransformationController();
    _transformController.addListener(_onTransformChanged);
  }

  void _onTransformChanged() {
    final scale = _transformController.value.getMaxScaleOnAxis();
    final zoomed = scale > 1.001;
    if (zoomed != _isZoomed) {
      setState(() {
        _isZoomed = zoomed;
      });
    }
  }

  @override
  void dispose() {
    _transformController.removeListener(_onTransformChanged);
    _transformController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _downloadCurrentImage() async {
    final onDownload = widget.onDownload;
    if (onDownload == null || _isDownloading) return;

    setState(() {
      _isDownloading = true;
    });

    try {
      await onDownload(widget.imageUrls[_currentPage]);
    } finally {
      if (!mounted) return;
      setState(() {
        _isDownloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        constraints: BoxConstraints(maxHeight: screenHeight * 0.88),
        decoration: BoxDecoration(
          color: const Color(0xFF0D0D0D),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.white.withOpacity(0.12), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              blurRadius: 40,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 10, 10),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      '${_currentPage + 1} / ${widget.imageUrls.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Spacer(),
                  _HeaderIconButton(
                    onTap: _downloadCurrentImage,
                    child: _isDownloading
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white),
                          )
                        : const Icon(Icons.download_rounded,
                            color: Colors.white, size: 20),
                  ),
                  const SizedBox(width: 8),
                  _HeaderIconButton(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.close_rounded,
                        color: Colors.white, size: 20),
                  ),
                ],
              ),
            ),

            Divider(height: 1, color: Colors.white.withOpacity(0.1)),

            // Image PageView – fills remaining space
            Flexible(
              child: PageView.builder(
                controller: _pageController,
                physics: _isZoomed
                    ? const NeverScrollableScrollPhysics()
                    : const PageScrollPhysics(),
                itemCount: widget.imageUrls.length,
                onPageChanged: (index) {
                  _transformController.value = Matrix4.identity();
                  setState(() {
                    _currentPage = index;
                    _isZoomed = false;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(14, 14, 14, 6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        color: Colors.black,
                        child: InteractiveViewer(
                          transformationController: _transformController,
                          minScale: 1,
                          maxScale: 4,
                          child: Image.network(
                            widget.imageUrls[index],
                            fit: BoxFit.contain,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const Center(
                                child: CircularProgressIndicator(
                                    color: Colors.white54),
                              );
                            },
                            errorBuilder: (context, error, stackTrace) {
                              return const Center(
                                child: Icon(
                                  Icons.broken_image_outlined,
                                  color: Colors.white54,
                                  size: 48,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Page indicator dots
            if (widget.imageUrls.length > 1)
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.imageUrls.length, (i) {
                    final isActive = i == _currentPage;
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      width: isActive ? 20 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: isActive
                            ? Colors.white
                            : Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    );
                  }),
                ),
              )
            else
              const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}

class _HeaderIconButton extends StatelessWidget {
  const _HeaderIconButton({required this.onTap, required this.child});

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white.withOpacity(0.15), width: 1),
        ),
        child: Center(child: child),
      ),
    );
  }
}
