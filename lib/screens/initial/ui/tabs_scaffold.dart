// Flutter imports:
import 'package:ecommerce_demo/app/constants/app_colors.dart';
import 'package:ecommerce_demo/app/constants/app_decorations.dart';
import 'package:ecommerce_demo/app/constants/app_dictionary.dart';
import 'package:ecommerce_demo/app/theme/text_styles.dart';
import 'package:ecommerce_demo/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        color: AppColors.errorRed,
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
      bottomNavigationBar: Container(
        decoration: AppDecorations.navBar,
        child: Material(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              height: 72,
              decoration: AppDecorations.navBar,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 68, vertical: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomNavigationItem(
                    itemIndex: 0,
                    active: index == 0,
                    onTap: onChangedTab,
                    icon: SvgPicture.asset(
                      AppIcons.phoneIcon,
                      height: 18,
                    ),
                    label: BottomNavigationTitle.products,
                  ),
                  CustomNavigationItem(
                    itemIndex: 1,
                    active: index == 1,
                    onTap: onChangedTab,
                    icon: SvgPicture.asset(
                      AppIcons.cartIcon,
                      height: 18,
                    ),
                    label: BottomNavigationTitle.cart,
                  ),
                  CustomNavigationItem(
                    itemIndex: 2,
                    active: index == 2,
                    onTap: onChangedTab,
                    icon: SvgPicture.asset(
                      AppIcons.heartIcon,
                      height: 18,
                    ),
                    label: BottomNavigationTitle.favourites,
                  ),
                  CustomNavigationItem(
                    itemIndex: 3,
                    active: index == 3,
                    onTap: onChangedTab,
                    icon: SvgPicture.asset(
                      AppIcons.personalIcon,
                      height: 18,
                    ),
                    label: BottomNavigationTitle.personal,
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class CustomNavigationItem extends StatelessWidget {
  final bool active;
  final int itemIndex;
  final Function onTap;
  final SvgPicture icon;
  final String label;
  const CustomNavigationItem({
    Key? key,
    required this.active,
    required this.itemIndex,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(itemIndex);
      },
      child: Container(
          alignment: Alignment.center,
          child: active
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.selectedNavIcon),
                    const SizedBox(width: 7),
                    Text(
                      label,
                      style: AppTextStyle.markPro15W700
                          .apply(color: AppColors.white),
                    )
                  ],
                )
              : icon),
    );
  }
}
