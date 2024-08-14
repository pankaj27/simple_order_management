import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:simple_order_management/models/orders_model.dart';
import 'package:simple_order_management/screens/details_orders.dart';

import '../screens/dashboard.dart';
import '../screens/order_details.dart';
import 'RfWidget.dart';
class OrderListComponent extends StatelessWidget {
  final Orders? hotelData;
  final bool? showHeight;

  const OrderListComponent({super.key, this.hotelData, this.showHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(),
      decoration: boxDecorationRoundedWithShadow(0, backgroundColor: Colors.white),
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
                      Text(hotelData!.categoryName.validate(), style: boldTextStyle()),
                      8.height,
                      Row(
                        children: [
                          Text('14-08-2024 07:40 AM'),

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
              showHeight.validate() ? 8.height : 24.height,
              const Divider(
                  color: Color(0xFFF9F9FC)
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(0)),
                child: SizedBox(
                  width: 400,
                  height: 56,
                  child: ElevatedButton(

                    onPressed: () {
                      Navigator
                          .of(context)
                          .push(MaterialPageRoute(builder: (BuildContext context) => const DetailsOrders()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        width: 1.0,
                        color: Color(0xFF1F2B7B),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                    ),
                    child: const Text(
                      'Order Details',
                      style: TextStyle(
                        color: Color(0xFF1F2B7B),
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ).paddingSymmetric(horizontal: 16)
            ],
          ).expand()
        ],
      ),
    ).onTap(() {
      //RFHotelDescriptionScreen(hotelData: hotelData).launch(context);
    },
        splashColor: Colors.transparent, hoverColor: Colors.transparent, highlightColor: Colors.transparent);
  }
}
