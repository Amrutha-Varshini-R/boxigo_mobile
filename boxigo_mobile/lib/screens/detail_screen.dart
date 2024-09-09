import 'package:boxigo_mobile/controllers/home_screen_controller.dart';
import 'package:boxigo_mobile/models/user_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailScreen extends GetView<HomeScreenController> {
  final CustomerEstimateFlow? customerEstimateFlow;

  const DetailScreen({super.key, this.customerEstimateFlow});

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.chair,
      Icons.electrical_services_rounded,
      Icons.bike_scooter_outlined,
      Icons.devices_other,
      Icons.rectangle_outlined,
    ];
    final details = customerEstimateFlow;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'New Leads',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
          bottom: TabBar(
            tabs: const [
              Tab(
                text: 'Items',
              ),
              Tab(
                text: 'Floor info',
              ),
              Tab(
                text: 'Send quote',
              ),
            ],
            labelColor: Colors.orange[800],
            indicatorColor: Colors.orange[800],
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
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
        body: TabBarView(
          children: [
            GetBuilder<HomeScreenController>(
              builder: (controller) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0.w,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.isInventory = !controller.isInventory;
                          controller.update();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(
                            8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.0.w,
                                ),
                                child: Text(
                                  'Inventory',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.orange[800],
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 8.0.w,
                                ),
                                child: controller.isInventory
                                    ? const Icon(Icons.arrow_upward_sharp)
                                    : const Icon(Icons.arrow_downward_sharp),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      if (controller.isInventory)
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: details?.items?.inventory?.length ?? 0,
                            itemBuilder: (context, index) {
                              final itemDetail =
                                  details?.items?.inventory?[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15.0.w, vertical: 5.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(icons[index]),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              itemDetail?.displayName ?? '',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              itemDetail
                                                      ?.category?.first.name ??
                                                  '',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      itemDetail?.category?.length.toString() ??
                                          '',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16.sp,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      GestureDetector(
                        onTap: () {
                          controller.isCustomItems = !controller.isCustomItems;
                          controller.update();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(
                            8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(
                              4.r,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.0.w,
                                ),
                                child: Text(
                                  'Custom Items',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.orange[800],
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 8.0.w,
                                ),
                                child: controller.isCustomItems
                                    ? const Icon(Icons.arrow_upward_sharp)
                                    : const Icon(Icons.arrow_downward_sharp),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      if (controller.isCustomItems)
                        ListView.builder(
                          itemBuilder: (context, index) {
                            final itemDetail =
                                details?.items?.customItems?.items;
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15.0.w,
                                vertical: 5.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itemDetail?[index].itemName ?? '',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    itemDetail?[index].itemDescription ?? '',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'L: ${itemDetail?[index].itemLength} ft',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'W: ${itemDetail?[index].itemWidth} ft',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'H: ${itemDetail?[index].itemHeight} ft',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: details?.items?.customItems?.items?.length,
                          shrinkWrap: true,
                        ),
                    ],
                  ),
                );
              },
            ),
            GetBuilder<HomeScreenController>(builder: (controller) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                    padding: const EdgeInsets.all(
                      8,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(
                        4.r,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0.w,
                      ),
                      child: Text(
                        'Existing house details',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.orange[800],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Floor No.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.oldFloorNo ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Elevator Available',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.oldElevatorAvailability ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Packing Required',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.packingService ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Additional Information',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.oldHouseAdditionalInfo ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 10.h,
                    ),
                    padding: const EdgeInsets.all(
                      8,
                    ),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(
                        4.r,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0.w,
                      ),
                      child: Text(
                        'New house details',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.orange[800],
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Floor No.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.newFloorNo ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Elevator Available',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.newElevatorAvailability ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Unpacking Required',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.unpackingService ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0.w,
                      vertical: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Additional Information',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          details?.newHouseAdditionalInfo ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            }),
            Center(
              child: Text(
                'Send quote coming soon...',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
