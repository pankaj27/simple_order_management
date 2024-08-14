import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:simple_order_management/models/orders_model.dart';

class OrderDetails extends StatefulWidget {
  final Orders? hotelData;
  const OrderDetails({super.key, this.hotelData});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order Data', style: boldTextStyle()),
                          8.height                          ,
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
                                Text('new', style: boldTextStyle(color: const Color(0xFF1F2B7B), size: 14)),
                                4.width,

                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                            decoration: boxDecorationWithRoundedCorners(backgroundColor: const Color(
                                0xFFF4F4F8)),
                            child: Row(
                              children: [
                                Text('Jahez', style: boldTextStyle(color: const Color(0xFF1F2B7B), size: 14)),
                                4.width,
                              ],
                            ),
                          )
                          ,
                          2.width,
                          //     Text(hotelData!.address.validate(), style: secondaryTextStyle()),
                        ],
                      ),
                    ],
                  ).paddingOnly(left: 3),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order Id - NFC1234', style: boldTextStyle()),
                          8.height,
                          const Row(
                            children: [
                              Text('14-08-2024 07:40 AM'),

                            ],
                          ).fit(),
                        ],
                      ).expand(),

                    ],
                  ),
                  24.height,
                  Text('Items', style: boldTextStyle()),
                  16.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFD0D3E8)),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: <Widget>[
                                Text("ID:"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("12345678"),
                              ],
                            ),
                            4.height,
                            const Row(
                              children: <Widget>[
                                Text("Q:"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("12345678"),
                              ],
                            ),
                            4.height,
                            const Row(
                              children: <Widget>[
                                Text("Price:"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("20 SAR"),
                              ],
                            ),
                            4.height,
                            const Row(
                              children: <Widget>[
                                Text("Total:"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("40 SAR"),
                              ],
                            ),
                          ],
                        ),
                      ),),



                    ],
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
