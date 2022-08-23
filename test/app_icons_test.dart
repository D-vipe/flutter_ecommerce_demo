import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:ecommerce_demo/resources/resources.dart';

void main() {
  test('app_icons assets test', () {
    expect(File(AppIcons.cartIcon).existsSync(), true);
    expect(File(AppIcons.filledFavorite).existsSync(), true);
    expect(File(AppIcons.heartIcon).existsSync(), true);
    expect(File(AppIcons.outlinedFavorite).existsSync(), true);
    expect(File(AppIcons.personalIcon).existsSync(), true);
    expect(File(AppIcons.phoneIcon).existsSync(), true);
    expect(File(AppIcons.selectedNavIcon).existsSync(), true);
  });
}
