import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:simple_order_management/models/orders_model.dart';
//import '../screens/order_details.dart';
import 'RfWidget.dart';
class ItemListComponent extends StatelessWidget {
  final Orders? hotelData;
  final bool? showHeight;

  const ItemListComponent({super.key, this.hotelData, this.showHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD0D3E8)),
          borderRadius: BorderRadius.circular(15)
      ),
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rfCommonCachedNetworkImage(hotelData!.img.validate(), height: 80, width: 80, fit: BoxFit.fill, alignment: Alignment.center).cornerRadiusWithClipRRect(8),
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
                      Text('Panadel-Cop', style: boldTextStyle()),
                      8.height,
                      Row(
                        children: [
                              Text('Serial', style: secondaryTextStyle()),
                              Text('123456789', style: boldTextStyle(color: const Color(0xFF1F2B7B))),


                        ],
                      ),Row(
                        children: [
                          Text('Qty', style: secondaryTextStyle()),
                          Text('2 Items', style: boldTextStyle(color: const Color(0xFF1F2B7B))),


                        ],
                      ).fit(),
                    ],
                  ).expand(),
                  Row(
                    children: [
                      Text('30 EGP', style: boldTextStyle(color: const Color(0xFF1F2B7B))),

                    ],
                  ),
                ],
              ).paddingOnly(left: 3),
              showHeight.validate() ? 8.height : 24.height,

            ],
          ).expand()
        ],
      ),
    ).onTap(() {

    }, splashColor: Colors.transparent, hoverColor: Colors.transparent, highlightColor: Colors.transparent);
  }
}
