import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:simple_order_management/models/orders_model.dart';
import 'package:simple_order_management/widget/OrderListComponent.dart';

import '../utils/category_generator.dart';
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<Orders> categoryData = categoryList();
  List<Orders> hotelListData = hotelList();
  int selectCategoryIndex = 0;

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              HorizontalList(
                padding: const EdgeInsets.only(right: 16, left: 16),
                wrapAlignment: WrapAlignment.spaceEvenly,
                itemCount: categoryData.length,
                itemBuilder: (BuildContext context, int index) {
                  Orders data = categoryData[index];

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectCategoryIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      decoration: boxDecorationWithRoundedCorners(
                        backgroundColor:selectCategoryIndex == index
                            ? const Color(0xFF1F2B7B)
                            : Colors.white,
                         border: Border.all(color: selectCategoryIndex == index
                             ? const Color(0xFF1F2B7B)
                             : const Color(0xFFD0D3E8))
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Text(
                        data.categoryName.validate(),
                        style: boldTextStyle(color: selectCategoryIndex == index ? Colors.white : gray),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
          Expanded (child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: hotelListData.take(10).length,
            itemBuilder: (BuildContext context, int index) {
              Orders data = hotelListData[index];
              return OrderListComponent(hotelData: data);
            },
          ),),

            ]
        )

    );
  }
}
