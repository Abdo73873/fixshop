import 'package:fixshop/Logic/Widget.dart';
import 'package:fixshop/Logic/cubit/home_cubit.dart';
import 'package:fixshop/Screens/AddMobile.dart';
import 'package:fixshop/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeCubit cubit = HomeCubit.get(context) as HomeCubit;

          return Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: primaypcolor,
              child: Icon(Icons.add, color: textcolor, size: 50.w),
              onPressed: () {
                NavigateTo(context, const addmobile());
              },
              //params
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
            body: cubit.screens[cubit.currentindex],
            bottomNavigationBar: AnimatedBottomNavigationBar(
              icons: const [
                CupertinoIcons.news,
                CupertinoIcons.money_dollar_circle,
                CupertinoIcons.checkmark_alt_circle,
                CupertinoIcons.archivebox,
              ],
              iconSize: 30.w,
              activeColor: textcolor,
              inactiveColor: Colors.white,
              backgroundColor: primaypcolor,
              activeIndex: cubit.currentindex,
              gapLocation: GapLocation.end,
              notchSmoothness: NotchSmoothness.defaultEdge,
              onTap: (index) {
                print(cubit.screnns);
                cubit.screnns(index);
              },
            ),
          );
        },
      ),
    );
  }
}
//BottomNavigationBar(
//                 onTap: (index) {
//                   cubit.screnns(index);
//                 },
//                 currentIndex: cubit.currentindex,
//                 type: BottomNavigationBarType.fixed,
//                 items: const <BottomNavigationBarItem>[
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.home), label: 'dedo'),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.card_giftcard), label: 'dedo'),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.favorite),
//                     label: 'dedo',
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.portrait),
//                     label: 'dedo',
//                   ),
//                 ],
//               ),
