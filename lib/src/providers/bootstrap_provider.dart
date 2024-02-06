import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BootstrapNotifier extends ChangeNotifier {
  bool isLoading = false;

  bool isDisabledLoading = false;
  bool keepShowing = false;

  void showLoading(bool isLoading) {
    this.isLoading = isDisabledLoading ? false : isLoading;
    notifyListeners();
  }
}

BootstrapNotifier bootstrapNotifier = BootstrapNotifier();

final bootstrapProvider = ChangeNotifierProvider<BootstrapNotifier>((ref) {
  return bootstrapNotifier;
});
