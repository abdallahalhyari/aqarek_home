import 'package:flutter/material.dart';
import '../../utils/theme/app_colors.dart';

// ignore: use_key_in_widget_constructors
class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.bottomNavLigt,
            elevation: 0,
            selectedItemColor: AppColors.secondary,
            unselectedItemColor: Colors.grey.shade500,
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            selectedFontSize: 14,
            onTap: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            currentIndex: currentPageIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings, size: 20), label: 'Settings'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 20), label: 'Profile'),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 3.0, horizontal: 2),
                      child: Icon(Icons.notifications, size: 20)),
                  label: 'Notifications')
            ]),
        body: <Widget>[
          // BlocProvider<SettingsBloc>(
          //     create: (context) => SettingsBloc(),
          //     child: const SettingsScreen()),
          // BlocProvider<PatientInfoBloc>(
          //     create: (context) => PatientInfoBloc(),
          //     child: PatientInfoScreen()),
          // BlocProvider<NotificationBloc>(
          //     create: (context) => NotificationBloc(
          //         contactId:
          //             context.read<SignInBloc>().signInModel!.contactId!),
          //     child: const NotificationScreen())
        ][currentPageIndex]);
  }
}
