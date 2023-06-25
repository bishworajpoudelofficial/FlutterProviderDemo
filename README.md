# Provider State Management In Flutter

### What is State Management?
State management is a way to manage the state of a Flutter application. It is a way to keep the data of an application in sync with the UI. 


### Components of Provider State Management
There are three components related to this Provider State Management that we need to understand:
- ChangeNotifier
- ChangeNotifierProvider
- Consumer

### 1. ChangeNotifier
Here in this example, we have a Counter class that extends ChangeNotifier. It has a private variable _count and a getter count. It also has a method increment that increments the count and notifies the listeners about the change.
```dart
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notify listeners about the change
  }
}
```
#### Important Note
The Most Important thing is calling notifyListeners(), whenever you change the state data in ChangeNotifier. If you will not call this method, the state change would not reflect in the UI. The method notifyListeners() tells flutter to rebuild the screen which is using that ChangeNotifier.

### 2. ChangeNotifierProvider
ChangeNotifierProvider is a widget that provides an instance of ChangeNotifier to its descendants. It is a generic class that takes a type argument. The type argument is the type of the ChangeNotifier class that you want to provide to its descendants. In this example, we are providing an instance of Counter class to its descendants.

### 3. Consumer
Consumer is a widget that listens to the ChangeNotifier provided by the ChangeNotifierProvider. It takes a builder function that returns a widget. The builder function takes two arguments, the first one is the BuildContext and the second one is the instance of the ChangeNotifier. In this example, we are using the instance of the Counter class provided by the ChangeNotifierProvider to display the count.
