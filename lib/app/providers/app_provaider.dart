
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  PageController get pageController => _pageController;

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void updatePageController(int pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    notifyListeners();
  }
}
