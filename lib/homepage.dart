import 'package:contact_diary_app/product.dart';
import 'package:contact_diary_app/searchtab.dart';
import 'package:contact_diary_app/shoapingtab.dart';
import 'package:flutter/cupertino.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: product(),
                );
              });
              break;
            case 1:
              returnValue = CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: searchtab(),
                );
              });
              break;
            case 2:
              returnValue = CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: shopingtab(),
                );
              });
              break;
          }
          return returnValue;
        },
      ),
    );
  }
}
