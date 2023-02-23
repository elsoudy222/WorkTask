import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/colors_list.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  Color defaultColor = Colors.amber;
  void changeBackgroundColor() {
    var randomColor = Random().nextInt(colorArray.length);
      defaultColor = colorArray[randomColor];
      emit(ChangeBackgroundColorState());
  }
}
