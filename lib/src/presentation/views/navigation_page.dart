import 'package:globus/src/core/utils/app_colors.dart';
import 'package:globus/src/core/utils/app_images.dart';
import 'package:globus/src/core/utils/app_text.dart';
import 'package:globus/src/presentation/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:globus/src/presentation/views/home_page.dart';
import 'package:globus/src/presentation/views/chat_page.dart';
import 'package:globus/src/presentation/views/notification_page.dart';
import 'package:globus/src/presentation/views/profile_page.dart';
import 'package:globus/src/presentation/widgets/chat_page/chat_page_appbar.dart';
import 'package:globus/src/presentation/widgets/home_page/home_page_appbar.dart';
import 'package:globus/src/presentation/widgets/notification_page/notification_appbar.dart';
import 'package:globus/src/presentation/widgets/profile_page/profile_page_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({
    Key? key,
  }) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  DateTime timeBackPressed = DateTime.now();

  _NavigationPageState();

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bodyBg,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: BlocBuilder<NavigationBloc, NavigationState>(
            builder: (context, state) {
              if (state is HomePageLoaded) {
                return const HomePageAppBar();
              }
              if (state is ChatPageLoaded) {
                return const ChatPageAppBar();
              }
              if (state is NotificationPageLoaded) {
                return const NotificationPageAppBar();
              }
              if (state is ProfilePageLoaded) {
                return const ProfilePageAppBar();
              }
              return Container();
            },
          ),
        ),
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (BuildContext context, NavigationState state) {
            if (state is HomePageLoaded) {
              return const HomePage();
            }
            if (state is ChatPageLoaded) {
              return const ChatPage();
            }
            if (state is NotificationPageLoaded) {
              return const NotificationPage();
            }
            if (state is ProfilePageLoaded) {
              return const ProfilePage();
            }
            return Container();
          },
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: AppColors.mainGrey, width: 0.5))),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.bottomBarColor,
              currentIndex: activeIndex,
              elevation: 0,
              selectedItemColor: AppColors.mainOrange,
              selectedLabelStyle: const TextStyle(
                  color: AppColors.mainOrange, fontSize: 11, height: 2),
              unselectedLabelStyle:
                  const TextStyle(color: AppColors.mainGrey, fontSize: 11),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              onTap: (value) {
                setState(() {
                  activeIndex = value;
                });
                context.read<NavigationBloc>().add(PageTapped(index: value));
              },
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.navbarHome),
                    activeIcon: SvgPicture.asset(
                      AppImages.navbarHome,
                      colorFilter: const ColorFilter.mode(
                          AppColors.mainOrange, BlendMode.srcIn),
                    ),
                    label: AppText.navHome),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.navbarChat),
                    activeIcon: SvgPicture.asset(
                      AppImages.navbarChat,
                      colorFilter: const ColorFilter.mode(
                          AppColors.mainOrange, BlendMode.srcIn),
                    ),
                    label: AppText.navChat),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.navbarAlert),
                    activeIcon: SvgPicture.asset(
                      AppImages.navbarAlert,
                      colorFilter: const ColorFilter.mode(
                          AppColors.mainOrange, BlendMode.srcIn),
                    ),
                    label: AppText.navNotification),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(AppImages.navbarUser),
                    activeIcon: SvgPicture.asset(
                      AppImages.navbarUser,
                      colorFilter: const ColorFilter.mode(
                          AppColors.mainOrange, BlendMode.srcIn),
                    ),
                    label: AppText.navProfile),
              ]),
        ));
  }
}
