// Flutter imports:
import 'package:ecommerce_demo/app/constants/app_colors.dart';
import 'package:ecommerce_demo/app/constants/app_decorations.dart';
import 'package:ecommerce_demo/app/constants/app_dictionary.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Project imports:

class TabsScaffold extends StatefulWidget {
  final int? requestedIndex;
  const TabsScaffold({
    Key? key,
    this.requestedIndex,
  }) : super(key: key);

  @override
  State<TabsScaffold> createState() => _TabsScaffoldState();
}

class _TabsScaffoldState extends State<TabsScaffold> {
  late PageController _pageController;
  List<Widget> tabs = [];

  int index = 0;

  @override
  void initState() {
    super.initState();
    index = widget.requestedIndex ?? 0;
    _pageController = PageController(initialPage: index);
    _updateTabWidgets();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  void _updateTabWidgets() {
    tabs = [
      Container(
        color: AppColors.background,
      ),
      Container(
        color: AppColors.orange,
      ),
      Container(
        color: AppColors.errorRed,
      ),
      Container(
        color: AppColors.dark,
      ),
    ];
  }

  void onChangedTab(int value) {
    setState(() {
      index = value;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (idx) => onChangedTab(idx),
        fixedColor: Theme.of(context).colorScheme.secondary,
        items: const [
          BottomNavigationBarItem(
            label: BottomNavigationTitle.products,
            icon: Icon(
              MdiIcons.viewList,
            ),
          ),
          BottomNavigationBarItem(
            label: BottomNavigationTitle.cart,
            icon: Icon(
              MdiIcons.post,
            ),
          ),
          BottomNavigationBarItem(
            label: BottomNavigationTitle.favourites,
            icon: Icon(
              MdiIcons.viewGallery,
            ),
          ),
          BottomNavigationBarItem(
            label: BottomNavigationTitle.personal,
            icon: Icon(
              MdiIcons.account,
            ),
          ),
        ],
      ),
    );
  }
}
