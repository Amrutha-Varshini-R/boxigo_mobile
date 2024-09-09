import 'package:boxigo_mobile/controllers/home_screen_controller.dart';
import 'package:boxigo_mobile/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(
      HomeScreenController(),
    );
    return GetBuilder<HomeScreenController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            leading: Padding(
              padding: EdgeInsets.only(
                left: 8.w,
                right: 8.w,
              ),
              child: SvgPicture.asset(
                'assets/images/C_Language_Logo.svg',
                alignment: Alignment.center,
                width: 10.w,
                height: 10.h,
                fit: BoxFit.contain,
              ),
            ),
            centerTitle: false,
            title: Text(
              'Leads',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            actions: [
              const Icon(
                Icons.notifications_none,
              ),
              SizedBox(
                width: 15.w,
              ),
              const Icon(
                Icons.search,
              ),
              SizedBox(
                width: 10.w,
              ),
            ],
          ),
          body: controller.isLoader == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount:
                      controller.userDataModel?.customerEstimateFlow?.length ??
                          0,
                  itemBuilder: (context, index) {
                    final detail =
                        controller.userDataModel?.customerEstimateFlow?[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 16.0.w,
                        right: 16.0.w,
                        bottom: 10.0.h,
                        top: 10.0.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    DateFormat('MMM').format(
                                      DateTime.parse(
                                        detail?.movingOn ??
                                            DateTime.now().toString(),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    DateFormat('dd').format(DateTime.parse(
                                      detail?.movingOn ??
                                          DateTime.now().toString(),
                                    )),
                                    style: TextStyle(
                                      color: Colors.orange[800],
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    DateFormat('HH:mm').format(
                                      DateTime.parse(
                                        detail?.movingOn ??
                                            DateTime.now().toString(),
                                      ),
                                    ),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        detail?.fromAddress?.fromCity ?? '',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(width: 50.w,),
                                      Text(
                                        detail?.estimateId ?? '',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h,),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width -
                                        100.w,
                                    child: Text(
                                      detail?.movingFrom ?? '',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_downward_sharp,
                                        color: Colors.orange[800],
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.home,
                                            color: Colors.orange[800],
                                          ),
                                          Text(
                                            detail?.propertySize ?? '',
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.cleaning_services,
                                            color: Colors.orange[800],
                                          ),
                                          Text(
                                            ' ${detail?.totalItems} items',
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.social_distance,
                                            color: Colors.orange[800],
                                          ),
                                          Text(
                                            ' ${detail?.distance}s',
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    detail?.toAddress?.toCity ?? '',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width -
                                        100.w,
                                    child: Text(
                                      detail?.movingTo ?? '',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(
                                    DetailScreen(
                                      customerEstimateFlow: detail,
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(
                                    8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.orange,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                  ),
                                  child: Text(
                                    'View details',
                                    style: TextStyle(
                                      color: Colors.orange[800],
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(
                                  8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.orange[800],
                                  borderRadius: BorderRadius.circular(
                                    4,
                                  ),
                                ),
                                child: Text(
                                  'Submit Quote',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey[350],
                            width: MediaQuery.of(context).size.width,
                          )
                        ],
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
