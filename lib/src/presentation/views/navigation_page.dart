import 'dart:async';
import 'package:alfateam/src/core/utils/app_colors.dart';
import 'package:alfateam/src/presentation/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:alfateam/src/presentation/views/home_page.dart';
import 'package:alfateam/src/presentation/views/second_page.dart';
import 'package:alfateam/src/presentation/views/third_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          preferredSize: const Size.fromHeight(80),
          child: BlocBuilder<NavigationBloc, NavigationState>(
            builder: (context, state) {
              if (state is HomePageLoaded) {
                return AppBar(
                  title: Text('home page'),
                );
              }
              if (state is SecondPageLoaded) {
                return AppBar(
                  title: Text('second page'),
                );
              }
              if (state is ThirdPageLoaded) {
                return AppBar(
                  title: Text('thrid page'),
                );
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
            if (state is SecondPageLoaded) {
              return const SecondPage();
            }
            if (state is ThirdPageLoaded) {
              return const ThirdPage();
            }
            return Container();
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: activeIndex,
            onTap: (value) {
              setState(() {
                activeIndex = value;
              });
              context.read<NavigationBloc>().add(PageTapped(index: value));
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download_for_offline_rounded), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.analytics), label: ''),
            ]));
  }
}
