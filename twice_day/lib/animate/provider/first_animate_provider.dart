import 'package:flutter/widgets.dart';

class FirstAnimatedProvider extends ChangeNotifier {
  bool _selectImage = false;
  bool get selected => _selectImage;

  void changeSelected() {
    _selectImage = !_selectImage;
    print(_selectImage);
    notifyListeners();
  }
}
