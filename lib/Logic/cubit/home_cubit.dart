import 'package:bloc/bloc.dart';
import 'package:fixshop/Screens/DoneMobiles.dart';
import 'package:fixshop/Screens/NewMobiles.dart';
import 'package:fixshop/Screens/archivedMobile.dart';
import 'package:fixshop/Screens/importantMobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);

  int currentindex = 0;
  List<Widget> screens = [
    NewMobiles(),
    importantMobile(),
    DoneMobiles(),
    archivedMobile(),
  ];

  List<String> tittle = [
    'Tasks',
    'Donetasks',
    'ArchivedTasks',
    'ArchivedTasks',
  ];

  void screnns(index) {
    currentindex = index;
    print(currentindex);
    emit(changescreen());
  }
}
