import 'package:flutter/cupertino.dart';

class NumbersListProvider extends ChangeNotifier{
  List<int> numbers = [0];

  void addNumbersToList(){
    int last = numbers.last;
    numbers.add(last+1);
    notifyListeners();
  }
}