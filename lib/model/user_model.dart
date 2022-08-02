// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthData;

  UserModel({
    required this.name,
    required this.imgAvatar,
    required this.birthData,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        birthData != oldWidget.birthData;
  }

  static of(BuildContext context){
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null , 'UserModel not exist in BuildContext');
    
    return userModel;
  }
}
