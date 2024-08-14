import 'package:flutter/material.dart';
import 'package:simple_order_management/screens/login_screen.dart';
import 'package:simple_order_management/screens/logout_screen.dart';
import 'package:simple_order_management/screens/order_history.dart';
import 'package:simple_order_management/screens/order_screen.dart';
import 'package:nb_utils/nb_utils.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _currentIndex = 0;
  final List<Widget> _tabs = [
    OrderScreen(),
    OrderHistory(),
    LogoutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 2) {
            showConfirmDialogCustom(
              context,
              cancelable: false,
              title: "Are you sure you want to logout?",
              dialogType: DialogType.CONFIRMATION,
              onCancel: (v) {
                Navigator
                    .of(context)
                    .pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const DashboardScreen()));
              },
              onAccept: (v) {
                Navigator
                    .of(context)
                    .pushReplacement(MaterialPageRoute(builder: (BuildContext context) => const LoginScreen()));
              },
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power_settings_new),
            label: 'Logout',

          ),
        ],

      ),
    );
  }


}


