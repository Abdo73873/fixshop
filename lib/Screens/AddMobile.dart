import 'package:fixshop/Logic/Widget.dart';
import 'package:fixshop/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class addmobile extends StatelessWidget {
  const addmobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    var MycustomernameController = TextEditingController();
    var MyFixissueController = TextEditingController();
    var MycustomerNumberController = TextEditingController();

    var myDateController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: background,
            title: Text(
              'اضافه جهاز اضافه جهاز اضافه جهاز',
            ),
            centerTitle: true),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Form(
            key: formkey,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0).w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              color: primaypcolor,
                              child: Column(children: const [
                                Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg'),
                                  filterQuality: FilterQuality.high,
                                )
                              ]),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  size: 30.w,
                                  Icons.add_circle,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Textfieldup(
                        Lable: 'اسم العميل ',
                        context: context,
                        keyboardtype: TextInputType.text,
                        myicon: Icons.title_sharp,
                        myTimeController: MycustomernameController,
                        ontap: () {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.h),
                      Textfieldup(
                        Lable: 'العطل',
                        context: context,
                        keyboardtype: TextInputType.text,
                        myicon: Icons.title_sharp,
                        myTimeController: MyFixissueController,
                        ontap: () {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.h),
                      Textfieldup(
                        Lable: 'رقم العميل',
                        context: context,
                        keyboardtype: TextInputType.text,
                        myicon: Icons.title_sharp,
                        myTimeController: MycustomerNumberController,
                        ontap: () {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.h),
                      Textfieldup(
                        Lable: 'السعر',
                        context: context,
                        keyboardtype: TextInputType.text,
                        myicon: Icons.title_sharp,
                        myTimeController: MycustomerNumberController,
                        ontap: () {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Expanded(
                            child: Textfieldup(
                              Lable: 'التاريخ',
                              context: context,
                              keyboardtype: TextInputType.text,
                              myicon: Icons.title_sharp,
                              myTimeController: MycustomerNumberController,
                              ontap: () {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Textfieldup(
                              Lable: 'الوقت',
                              context: context,
                              keyboardtype: TextInputType.text,
                              myicon: Icons.title_sharp,
                              myTimeController: myDateController,
                              ontap: () {},
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Textfieldup(
                        Lable: 'يوم التسليم المتوقع',
                        context: context,
                        keyboardtype: TextInputType.text,
                        myicon: Icons.title_sharp,
                        myTimeController: MycustomerNumberController,
                        ontap: () {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
