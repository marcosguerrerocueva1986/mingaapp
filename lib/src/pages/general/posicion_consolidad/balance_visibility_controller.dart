// lib/src/pages/general/posicion_consolidad/balance_visibility_controller.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final balanceVisibilityProvider = ChangeNotifierProvider((ref) => BalanceVisibilityController());

class BalanceVisibilityController extends ChangeNotifier {
  final Map<String, bool> _accountVisibility = {};

  bool _globallyHidden = false;

  bool isBalanceVisible(String accountId) {
    if (_globallyHidden) {
      return false;
    }
    return _accountVisibility[accountId] ?? true;
  }

  void toggleIndividualBalanceVisibility(String accountId) {
    if (!_globallyHidden) {
      _accountVisibility[accountId] = !(_accountVisibility[accountId] ?? true);
      notifyListeners();
    }
  }

  void toggleAllBalances() {
    _globallyHidden = !_globallyHidden;
    notifyListeners();
  }

  bool get areAllBalancesHidden => _globallyHidden;
}