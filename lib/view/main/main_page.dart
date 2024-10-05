import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/view/home/home_page.dart';
import 'package:movies_app/view/main/main_utils.dart';
import 'package:movies_app/view/search/search_page.dart';
import 'package:movies_app/view/watch_list/watch_list_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainMenu _menu = MainMenu.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242A32),
      body: IndexedStack(
        index: _menu.page,
        children: const [
          HomePage(),
          SizedBox(),
          WatchListPage(),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            color: Color(0xFF0296E5),
            height: 1,
          ),
          BottomNavigationBar(
            selectedItemColor: const Color(0xFF0296E5),
            unselectedItemColor: const Color(0xFF67686D),
            backgroundColor: const Color(0xFF242A32),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            currentIndex: _menu.page,
            onTap: (index) {
              final selectedMenu = MainMenu.mapToMainMenu(index);
              if (selectedMenu == MainMenu.search) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              } else {
                setState(() {
                  _menu = selectedMenu;
                });
              }
            },
            items: [
              _renderMainBottomBarItem(
                assets: 'assets/icons/ic_home.svg',
                label: 'Home',
                menu: MainMenu.home,
              ),
              _renderMainBottomBarItem(
                assets: 'assets/icons/ic_search.svg',
                label: 'Search',
                menu: MainMenu.search,
              ),
              _renderMainBottomBarItem(
                assets: 'assets/icons/ic_save.svg',
                label: 'Watch list',
                menu: MainMenu.watchList,
              ),
            ],
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _renderMainBottomBarItem({
    required String assets,
    required String label,
    required MainMenu menu,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SvgPicture.asset(
          assets,
          colorFilter: ColorFilter.mode(
            _menu == menu ? const Color(0xFF0296E5) : const Color(0xFF67686D),
            BlendMode.srcIn,
          ),
        ),
      ),
      label: label,
    );
  }
}
