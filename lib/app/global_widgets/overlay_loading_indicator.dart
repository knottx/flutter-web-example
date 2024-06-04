import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OverlayLoadingIndicator extends StatelessWidget {
  final bool isLoading;

  const OverlayLoadingIndicator(
    this.isLoading, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: Positioned.fill(
        child: Container(
          color: Colors.white24,
          child: const LoadingIndicator(),
        ),
      ),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  final double androidSize;
  final Color androidColor;
  final double androidStrokeWidth;
  final double iosRadius;
  final Color iosColor;

  const LoadingIndicator({
    super.key,
    this.androidSize = 32,
    this.androidColor = Colors.deepPurple,
    this.androidStrokeWidth = 4,
    this.iosRadius = 16,
    this.iosColor = Colors.deepPurple,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: kIsWeb
          ? _materialIndicator()
          : Platform.isIOS
              ? _cupertinoIndicator()
              : _materialIndicator(),
    );
  }

  Widget _materialIndicator() {
    return SizedBox(
      width: androidSize,
      height: androidSize,
      child: CircularProgressIndicator(
        color: androidColor,
        strokeWidth: androidStrokeWidth,
      ),
    );
  }

  Widget _cupertinoIndicator() {
    return CupertinoActivityIndicator(
      radius: iosRadius,
      color: iosColor,
    );
  }
}
