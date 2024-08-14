import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:simple_order_management/models/orders_model.dart';

import '../utils/category_generator.dart';
import '../widget/item_list_component.dart';
class DetailsOrders extends StatefulWidget {
  const DetailsOrders({super.key});

  @override
  State<DetailsOrders> createState() => _DetailsOrdersState();
}

class _DetailsOrdersState extends State<DetailsOrders> {
  List<Orders> hotelListData = hotelList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Details'),backgroundColor: Colors.white,
      ),
      bottomNavigationBar:
      Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          AppButton(
              child: Column(
                children: [
                  Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          //launchCall("1234567890");
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: context.dividerColor, width: 1),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //rf_call.iconImage(iconColor: appStore.isDarkModeOn ? white : rf_primaryColor),
                            8.width,
                            Text('Reject', style: boldTextStyle(color: const Color(0xFFFC7373))),
                          ],
                        ),
                      ).expand(),
                      16.width,
                      AppButton(
                        color: const Color(0xFF1F2B7B),
                        elevation: 0.0,
                        shapeBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        width: context.width(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //rf_message.iconImage(iconColor: whiteColor),
                            // rfCommonCachedNetworkImage(rf_message, color: white, height: 16, width: 16),
                            8.width,
                            Text('Accept', style: boldTextStyle(color: white)),
                          ],
                        ),
                        onTap: () {
                          //launchMail("demo@gmail.com");
                        },
                      ).expand()
                    ],
                  ).paddingSymmetric(horizontal: 16),
                ],
              )
          ),
        ],
      ),backgroundColor: Colors.white,
      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[

          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    width: context.width(),
                    decoration:  BoxDecoration(
                        border: Border.all(color: Color(0xFFD0D3E8)),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Order ID- NFC1234',style: boldTextStyle()),
                                    8.height,
                                    const Row(
                                      children: [
                                        Text('August 14, 2024 01:00 PM'),

                                      ],
                                    ).fit(),
                                  ],
                                ).expand(),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                                      decoration: boxDecorationWithRoundedCorners(backgroundColor: const Color(
                                          0xFFFAFBFD)),
                                      child: Row(
                                        children: [
                                          Text('Picup', style: boldTextStyle(color: const Color(0xFF1F2B7B), size: 14)),
                                          4.width,

                                        ],
                                      ),
                                    ),

                                    2.width,
                                    //     Text(hotelData!.address.validate(), style: secondaryTextStyle()),
                                  ],
                                ),
                              ],
                            ).paddingOnly(left: 3),

                            const Divider(
                                color: Color(0xFFF9F9FC)
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/roomFinding/rf_hotel1.jpg',height: 30,).cornerRadiusWithClipRRect(8),
                                10.width,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Client Name', style: boldTextStyle()),
                                            8.height,
                                            Row(
                                              children: [
                                                Text('999 6666 1222', style: secondaryTextStyle()),


                                              ],
                                            )
                                          ],
                                        ).expand(),
                                        Row(
                                          children: [
                                            Text('New', style: boldTextStyle(color: const Color(0xFF1F2B7B))),

                                          ],
                                        ),
                                      ],
                                    ).paddingOnly(left: 3),

                                  ],
                                ).expand()
                              ],
                            ),
                            const Divider(
                                color: Color(0xFFF9F9FC)
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on, color: const Color(0xFF1F2B7B), size: 18),
                                10.width,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Client Location', style: boldTextStyle()),
                                            8.height,
                                            Row(
                                              children: [
                                                Text('Address 1, Address 2, City , State, Pin', style: secondaryTextStyle()),


                                              ],
                                            )
                                          ],
                                        ).expand(),

                                      ],
                                    ).paddingOnly(left: 3),

                                  ],
                                ).expand()
                              ],
                            )


                          ],
                        ).expand()
                      ],
                    ),
                  ),
                  24.height,
                  Text('Items', style: boldTextStyle()),
                  16.height,
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: hotelListData.take(5).length,
                    itemBuilder: (BuildContext context, int index) {
                      Orders data = hotelListData[index];
                      return ItemListComponent(hotelData: data);
                    },
                  ),

                ],
              ).paddingOnly(left: 24, right: 24, top: 24, bottom: 8),
            ],
          ),
        ),
      ),


    );
  }
}
